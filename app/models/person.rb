class Person < ActiveRecord::Base

	attr_accessor :id, :firstName, :fullName, :address, :city, :stateCode, :country, :workEmail, :workPhone, :state, :last_employee_added


	API_KEY = '740cfee95ea4fcb56409db37f8a2575cc59b4759'
	BASE_URI = 'https://api.bamboohr.com/api/gateway.php/mechina/v1'

	
	def user_details
		employee_ids = []
		directory = HTTParty.get("#{BASE_URI}/employees/directory", {:basic_auth => {:username => API_KEY }, :headers => {"Accept" => "application/json" }})

		directory = ActiveSupport::JSON.decode(directory.body)
		directory["employees"].select {|x| employee_ids << x["id"]}

		employee_ids = employee_ids.sort

		last_employee_added = employee_ids.last

		response = HTTParty.get("#{BASE_URI}/employees/40435?fields=fullName1,address1,city,stateCode,country,workEmail,workPhone", {:basic_auth => {:username => API_KEY }, :headers => {"Accept" => "application/json" }})
		response = ActiveSupport::JSON.decode(response.body)

		self.last_employee_added = last_employee_added

		self.id = response["id"]
		self.fullName = response["fullName1"]
		self.firstName = response["firstName"]
		self.address = response["address1"]
		self.city = response["city"]
		self.state = response["state"]
		self.stateCode = response["stateCode"]
		self.country = response["country"]
		self.workEmail = response["workEmail"]
		self.workPhone = response["workPhone"]

		self
	end

	def fulladdress
		"#{self.address}, #{self.city}, #{stateCode}"
	end

	def user_add(user)
		HTTParty.post("#{BASE_URI}/employees/", :query => { "firstName" => user["firstName"], "lastName" =>["lastName"]},
															:headers => {"authorization" => API_KEY, "Accept" => "application/json", "Content-Type" => "application/json" })
		
	end
end

