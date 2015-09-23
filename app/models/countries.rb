class Countries < ActiveRecord::Base
	belongs_to  :users
	cattr_reader :nameHash, :links
	cattr_accessor :locationHash

	@@nameHash = {"AE" =>["UNITED ARAB EMIRATES", "UAE"], "AF" =>["AFGHANISTAN"],\
	"AL" =>["ALBANIA"], "AM" =>["ARMENIA"], "AO" =>["ANGOLA"], "AR" =>["ARGENTINA"],\
	"AT" =>["AUSTRIA"], "AU" =>["AUSTRALIA"], "AZ" =>["AZERBAIJAN"],\
	"BA" =>["BOSNIA AND HERZEGOVINA"], "BD" =>["BANGLADESH"], "BE" =>["BELGIUM"],\
	"BF" =>["BURKINA FASO"], "BG" =>["BULGARIA"], "BI" =>["BURUNDI"], "BJ" =>["BENIN"],\
	"BN" =>["BRUNEI DARUSSALAM"], "BO" =>["BOLIVIA"], "BR" =>["BRAZIL"],\
	"BS" =>["BAHAMAS"], "BT" =>["BHUTAN"], "BW" =>["BOTSWANA"], "BY" =>["BELARUS"],\
	"BZ" =>["BELIZE"], "CA" =>["CANADA"], "CD" =>["DEMOCRATIC REPUBLIC OF THE CONGO",\
	"D. CONGO", "DRC"], "CF" =>["CENTRAL AFRICAN REPUBLIC", "C.A.R.", "CAR"],\
	"CG" =>["CONGO"], "CH" =>["SWITZERLAND"], "CI" =>["COTE D'IVOIRE",\
	"IVORY COAST"], "CL" =>["CHILE"], "CM" =>["CAMEROON"],\
	"CN" =>["CHINA"], "CO" =>["COLOMBIA"], "CR" =>["COSTA RICA"],\
	"CU" =>["CUBA"], "CY" =>["CYPRUS"], "CZ" =>["CZECH REPUBLIC"],\
	"DE" =>["GERMANY"], "DJ" =>["DJIBOUTI"], "DK" =>["DENMARK"],\
	"DO" =>["DOMINICAN REPUBLIC"], "DZ" =>["ALGERIA"], "EC" =>["ECUADOR"],\
	"EE" =>["ESTONIA"], "EG" =>["EGYPT"], "ER" =>["ERITREA"], "ES" =>["SPAIN"],\
	"ET" =>["ETHIOPIA"], "FI" =>["FINLAND"], "FJ" =>["FIJI"],\
	"FK" =>["FALKLAND ISLANDS", "MALVINAS"], "FR" =>["FRANCE", "FRENCH GUIANA"],\
	"GA" =>["GABON"], "GB" =>["UNITED KINGDOM", "UK", "U.K."], "GE" =>["GEORGIA"],\
	"GH" =>["GHANA"], "GL" =>["GREENLAND"], "GM" =>["GAMBIA"], "GN" =>["GUINEA"],\
	"GQ" =>["EQUATORIAL GUINEA"], "GR" =>["GREECE"], "GT" =>["GUATEMALA"],\
	"GW" =>["GUINEA-BISSAU"], "GY" =>["GUYANA"], "HN" =>["HONDURAS"],\
	"HR" =>["CROATIA"], "HT" =>["HAITI"], "HU" =>["HUNGARY"], "IND" =>["INDONESIA"],\
	"IE" =>["IRELAND"], "IL" =>["ISRAEL"], "IN" =>["INDIA"], "IQ" =>["IRAQ"],\
	"IR" =>["IRAN", "ISLAMIC REPUBLIC OF IRAN"], "IS" =>["ICELAND"],\
	"IT" =>["ITALY"], "JM" =>["JAMAICA"], "JO" =>["JORDAN"], "JP" =>["JAPAN"],\
	"KE" =>["KENYA"], "KG" =>["KYRGYZSTAN"], "KH" =>["CAMBODIA"], "KO" =>["KOSOVO"],\
	"KP" =>["NORTH KOREA", "DEMOCRATIC PEOPLE'S REPUBLIC OF KOREA"],\
	"KR" =>["SOUTH KOREA", "KOREA"], "KW" =>["KUWAIT"], "KZ" =>["KAZAKHSTAN"],\
	"LA" =>["LAOS", "PEOPLE'S DEMOCRATIC REPUBLIC OF LAO"], "LB" =>["LEBANON"],\
	"LK" =>["SRI LANKA"], "LR" =>["LIBERIA"], "LS" =>["LESOTHO"],\
	"LT" =>["LITHUANIA"], "LU" =>["LUXEMBOURG"], "LV" =>["LATVIA"],\
	"LY" =>["LIBYA"], "MA" =>["MOROCCO"], "MD" =>["MOLDOVA", "REPUBLIC OF MOLDOVA"],\
	"ME" =>["MONTENEGRO"], "MG" =>["MADAGASCAR"], "MK" =>["MACEDONIA", "FYROM",\
	"THE FORMER YUGOSLAV REPUBLIC OF MACEDONIA"], "ML" =>["MALI"],\
	"MM" =>["MYANMAR"], "MN" =>["MONGOLIA"], "MR" =>["MAURITANIA"], "MW" =>["MALAWI"],\
	"MX" =>["MEXICO"], "MY" =>["MALAYSIA"], "MZ" =>["MOZAMBIQUE"], "NA" =>["NAMIBIA"],\
	"NC" =>["NEW CALEDONIA"], "NE" =>["NIGER"], "NG" =>["NIGERIA"],\
	"NI" =>["NICARAGUA"], "NL" =>["NETHERLANDS", "THE NETHERLANDS"],\
	"NO" =>["NORWAY"], "NP" =>["NEPAL"], "NZ" =>["NEW ZEALAND"], "OM" =>["OMAN"],\
	"PA" =>["PANAMA"], "PE" =>["PERU"], "PG" =>["PAPUA NEW GUINEA"],\
	"PH" =>["PHILIPPINES"], "PK" =>["PAKISTAN"], "PL" =>["POLAND"],\
	"PR" =>["PUERTO RICO"], "PS" =>["PALESTINE", "STATE OF PALESTINE"],\
	"PT" =>["PORTUGAL"], "PY" =>["PARAGUAY"], "QA" =>["QATAR"], "RO" =>["ROMANIA"],\
	"RS" =>["SERBIA"], "RU" =>["RUSSIA", "RUSSIAN FEDERATION"], "RW" =>["RWANDA"],\
	"SA" =>["SAUDI ARABIA"], "SB" =>["SOLOMAN ISLANDS"], "SD" =>["SUDAN"],\
	"SE" =>["SWEDEN"], "SI" =>["SLOVENIA"], "SK" =>["SLOVAKIA"],\
	"SL" =>["SIERRA LEONE"], "SN" =>["SENEGAL"], "SO" =>["SOMALIA"],\
	"SR" =>["SURINAME"], "SS" =>["SOUTH SUDAN"],\
	"SV" =>["EL SALVADOR"], "SY" =>["SYRIA", "SYRIAN ARAB REPUBLIC"],\
	"SZ" =>["SWAZILAND"], "TD" =>["CHAD"], "TF" =>["FRENCH SOUTHERN TERRITORIES"],\
	"TG" =>["TOGO"], "TH" =>["THAILAND"], "TJ" =>["TAJIKISTAN"],\
	"TL" =>["TIMOR-LESTE", "EAST TIMOR"], "TM" =>["TURKMENISTAN"],\
	"TN" =>["TUNISIA"], "TR" =>["TURKEY"], "TT" =>["TRINIDAD", "TOBAGO",\
	"TRINIDAD AND TOBAGO"], "TW" =>["TAIWAN", "PROVINCE OF CHINA"],\
	"TZ" =>["TANZANIA", "UNITED REPUBLIC OF TANZANIA"], "UA" =>["UKRAINE"],\
	"UG" =>["UGANDA"], "US" =>["USA", "UNITED STATES", "UNITED STATES OF AMERICA"],\
	"UY" =>["URUGUAY"], "UZ" =>["UZBEKISTAN"], "VE" =>["VENEZUELA"],\
	"VN" =>["VIETNAM", "VIET NAM"], "VU" =>["VANUATU"], "WS" =>["WESTERN SAHARA"],\
	"YE" =>["YEMEN"], "ZA" =>["SOUTH AFRICA"], "ZM" =>["ZAMBIA"], "ZW" =>["ZIMBABWE"]};

	def Countries::readLocations
		file = File::open("app/assets/country_centroids.txt", "r")
		Rails.application.config.countryLocations = Hash.new
		file.each_line do |line|
			bits = line.split(',')
			key = bits[2].chomp
			long = bits[0].slice(1, bits[0].length).to_i
			lat = bits[1].slice(1, bits[1].length-1).to_i
			Rails.application.config.countryLocations[key.downcase] = [long, lat]
		end
		
	end
=begin
	@@locationHash = {"UNITED ARAB EMIRATES":[24.039927, 54.762851],\
	  "AFGHANISTAN":[33.93911,67.709953], "ALBANIA":[41, 20],\
	   "ARMENIA":[40, 45], "ANGOLA":[-12.5, 18.5],\
	    "ARGENTINA":[-34, -64], "AUSTRIA":[47.333333, 13.333333],\
	    "AUSTRALIA":[-25, 135], "AZERBAIJAN":[40.5, 47.5],\
	    "BOSNIA AND HERZEGOVINA":[44.25, 17.833333],\
	    "BANGLADESH":[24, 90], "BELGIUM":[50.833333, 4],\
	    "BURKINA FASO":[13, -2], "BULGARIA":[43, 25],\
	    "BURUNDI":[-3.5, 30], "BENIN":[9.5, 2.25],\
	    "BRUNEI DARUSSALAM":[4.5, 114.666667], "BOLIVIA":[-17, -65],\
	    "BRAZIL":[-10, -55], "BAHAMAS":[24, -76],\
	    "BHUTAN":[27.5, 90.5], "BOTSWANA":[-22, 24], "BELARUS":"BY", "BELIZE":"BZ", "CANADA":"CA",
		"DEMOCRATIC REPUBLIC OF THE CONGO":"CD", "D. CONGO":"CD",
		"CENTRAL AFRICAN REPUBLIC":"CF", "CAR":"CF", "CONGO":"CG",
		"SWITZERLAND":"CH", "COTE D'IVOIRE":"CI", "CHILE":"CL",
		"CAMEROON":"CM", "CHINA":"CN", "COLOMBIA":"CO", "COSTA RICA":"CR",
		"CUBA":"CU", "CYPRUS":"CY", "CZECH REPUBLIC":"CZ", "GERMANY":"DE",
		"DJIBOUTI":"DJ", "DENMARK":"DK", "DOMINICAN REPUBLIC":"DO",
		"ALGERIA":[28, 3], "ECUADOR":"EC", "ESTONIA":"EE", "EGYPT":"EG",
		"ERITREA":"ER", "SPAIN":"ES", "ETHIOPIA":"ET", "FINLAND":"FI",
		"FIJI":"FI", "FALKLAND ISLANDS":"FK", "MALVINAS":"FK",
		"FRANCE":"FR", "FRENCH GUIANA":"FR", "GABON":"GA", "UK":"GB",
		"UNITED KINGDOM":"GB", "GEORGIA":"GE", "GHANA":"GH",
		"GREENLAND":"GL", "GAMBIA":"GN", "GUINEA":"GN",
		"EQUATORIAL GUINEA":"GQ", "GREECE":"GR", "GUATEMALA":"GT",
		"GUINEA-BISSAU":"GW", "GUYANA":"GY", "HONDURAS":"HN",
		"CROATIA":"HR", "HAITI":"HT", "HUNGARY":"HU", "INDONESIA":"ID",
		"IRELAND":"IE", "ISRAEL":"IL", "INDIA":"IN", "IRAQ":"IQ",
		"ICELAND":"IS", "ITALY":"IT", "JAMAICA":"JM", "JORDAN":"JO",
		"JAPAN":"JP", "KENYA":"KE", "KYRGYZSTAN":"KG", "CAMBODIA":"KH",
		"NORTH KOREA":"KP", "KOSOVO":"KO", "SOUTH KOREA":"KR", "KUWAIT":"KW",
		"KAZAKHSTAN":"KZ", "LAOS":"LA", "LEBANON":"LB", "SRI LANKA":"LK",
		"LIBERIA":"LR", "LESOTHO":"LS", "LITHUANIA":"LT", "LUXEMBOURG":"LU",
		"LATVIA":"LV", "LIBYA":"LY", "MOROCCO":"MA", "MOLDOVA":"MD",
		"MONTENEGRO":"ME", "MADAGASCAR":"MG", "MACEDONIA":"MK",
		"FYROM":"MK", "MALI":"ML", "MYANMAR":"MM", "MONGOLIA":"MN",
		"MAURITANIA":"MR", "MALAWI":"MW", "MEXICO":"MY",
		"MALAYSIA":"MY", "MOZAMBIQUE":"MZ", "NAMIBIA":"NA",
		"NEW CALEDONIA":"NC", "NIGER":"NE", "NIGERIA":"NG",
		"NICARAGUA":"NI", "NETHERLANDS":"NL", "NORWAY":"NO", "NEPAL":"NP",
		"NEW ZEALAND":"NZ", "OMAN":"OM", "PANAMA":"PA", "PERU":"PE",
		"PAPUA NEW GUINEA":"PG", "PHILIPPINES":"PH", "PAKISTAN":"PK",
		"POLAND":"PL", "PUERTO RICO":"PR", "PALESTINE":"PS", "PORTUGAL":"PT",
		"PARAGUAY":"PY", "QATAR":"QA", "ROMANIA":"RO", "SERBIA":"RS",
		"RUSSIA":"RU", "RWANDA":"RW", "SAUDI ARABIA":"SA", "SOLOMAN ISLANDS":"SB",
		"SUDAN":"SD", "SWEDEN":"SE", "SLOVENIA":"SI", "SLOVAKIA":"SK",
		"SIERRA LEONE":"SL", "SENEGAL":"SN", "SOMALIA":"SO", "SURINAME":"SR",
		"SOUTH SUDAN":"SS", "EL SALVADOR":"SV", "SYRIA":"SY", "SWAZILAND":"SZ",
		"CHAD":"TD", "FRENCH SOUTHERN TERRITORIES":"TF", "TOGO":"TG",
		"THAILAND":"TH", "TAJIKISTAN":"TJ", "TIMOR-LESTE":"TL",
		"EAST TIMOR":"TL", "TURKMENISTAN":"TM", "TUNISIA":"TN", "TURKEY":"TR",
		"TRINIDAD AND TOBAGO":"TT", "TAIWAN":"TW", "TANZANIA":"TZ",
		"UKRAINE":"UA", "UGANDA":"UG", "UNITED STATES OF AMERICA":"US",
		"URUGUAY":"UY", "UZBEKISTAN":"UZ", "VENEZUELA":"VE", "VIETNAM":"VN",
		"VANUATU":"VU", "WESTERN SAHARA":"WS", "YEMEN":"YE", "SOUTH AFRICA":"ZA",
		"ZAMBIA":"ZM", "ZIMBABWE":"ZW"};
=end
end
