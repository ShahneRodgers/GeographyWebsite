require 'net/http'
require 'uri'
require 'json'

$day = (60*60*24)

class InfoController < ApplicationController

	def news
		#We only want to update the news once / day
		if (!Rails.application.config.lastRequest ||\
		 (Rails.application.config.lastRequest + $day) < Time.now)
			Rails.application.config.lastRequest = Time.now
			uri = URI.parse("http://www.reddit.com/r/worldnews/.json")
			uri.query = URI.encode_www_form({\
			'Content-Type'=>'application/json', 'User-Agent'\
			=>'rails:basictest:v1.0 by /u/shahnerodgers',\
			'limit'=>'100'})
			parseJson(Net::HTTP.get_response(uri).body)
		end
	end

	#Retrieves each title from the Json string.
	def parseJson(string)
		dict = JSON.parse(string)
		titles = Array.new
		links = Array.new
		dict['data']['children'].each do |link|
			if (link['kind'] == 't3') #This is a link
				titles << link['data']['title']
				links << [link['data']['permalink'], link['data']['url']]
			end
		end
		#if ! Rails.application.config.countryLocations
		#	Countries::readLocations
		#end
		searchTitles(titles, Rails.application.config.countryLocations, links)
	end

	#Searches for country names in the titles. The longest country name
	#contains 6 words.
	def searchTitles(titles, countries, links)
		Rails.application.config.response = Array.new
		Rails.application.config.links = Hash.new
		linkPos = -1
		titles.each do |title|
			#Remove HTML encoding symbols and non-letters/spaces.
			title.gsub!(/&[^;]*;|[^A-Za-z ]+/, "")
			linkPos += 1
			arr = title.split(" ")
			arr.length.times do |index|
				6.times do |i|
					checkWords(arr, index, i+1, countries, links, linkPos)
					#Don't break - map multiple countries if necessary
				end
			end
		end
	end

	def checkWords(arr, index, addition, countries, links, linkPos)
		if arr.length >= index + addition
			key = arr.slice(index, addition).join(" ")
			if countries[key.downcase]
				#Countries might have multiple links
				countryLinks = Rails.application.config.links[key]
				if (countryLinks and not countryLinks.include? links[linkPos])
					Rails.application.config.links[key] << links[linkPos]
				else
					Rails.application.config.links[key] = [links[linkPos]]
					Rails.application.config.response <<\
					[key, countries[key.downcase]]
				end
				return true
			end
		end
		return false
	end
end
