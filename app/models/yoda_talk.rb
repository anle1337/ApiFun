class YodaTalk < ActiveRecord::Base

	API_KEY = "R57EyNxROomsheqmFu735DW5OCiup19ztSMjsnMegyPAZrhPXj"
	BASE_URI = "https://yoda.p.mashape.com/yoda"

	def yoda_translate(string)
		response = HTTParty.get("#{BASE_URI}?sentence=#{string}", :headers => { "X-Mashape-key" => API_KEY, "Accept" => "text/plain" })
	end
end

