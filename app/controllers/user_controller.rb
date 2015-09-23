class UserController < ApplicationController
	def signup
		if params && params[:user]
			countries = Countries.new
			countries.save
			params[:user][:countries] = countries.id
			@user = User.new(user_params)
			if @user.save
				session[:user] = @user.id
				session[:username] = @user.username
				redirect_to '/home' and return
			else
				countries.delete
				render "login" and return
			end	
		end
	end

	def user_params
		params.require(:user)\
		.permit(:username, :password, :password_confirmation, :countries)
	end

	def login
		if session[:user]
			redirect_to '/home' and return
		elsif params && params[:login]
			@user = User.authenticate(params[:login][:username], \
				params[:login][:password])
			if @user && !@user.errors.any?
				session[:user] = @user.id
				session[:username] = @user.username
				redirect_to '/home' and return
			end
		end		
		render "login"
	end

	def logout
		session[:user] = nil
		session[:username] = nil
		redirect_to root_path
	end

	def home
		if not session[:user] or not session[:username]
			redirect_to "/login" and return
		end
		begin
			@user = User.find(session[:user])
		rescue ActiveRecord::RecordNotFound
			redirect_to "/logout" and return
		end
		if (@user.username != session[:username])
			redirect_to "/logout" and return
		end
		@countries = Countries.find(@user.countries)
		if @countries && session[:current]
			updateCountries(@countries)
		end
	end

	def updateCountries(countries)
		session[:current].each_line(",") do |code|
			code.sub!(",", "")
			if code == "ID" #Indonesia causes database problems due to repeat ID
				code = "IND"
			end
			countries[code] += 1
		end
		countries.save
		session[:current] = nil
	end
end
