class YodaTalk < ActiveRecord::Base

	API_KEY = ENV["YODA_API_KEY"]
	BASE_URI = "https://yoda.p.mashape.com/yoda"

	def yoda_translate(string)
		response = HTTParty.get("#{BASE_URI}?sentence=#{string}", :headers => { "X-Mashape-key" => API_KEY, "Accept" => "text/plain" })
	end
end

