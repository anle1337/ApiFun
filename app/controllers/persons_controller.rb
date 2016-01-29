class PersonsController < ApplicationController
layout 'with_back_button'

  def index
    @bamboo = Person.new.user_details
    @person = Person.new

    @json = HTTParty.get("https://api.bamboohr.com/api/gateway.php/mechina/v1/employees/#{rand(40411..40510)}?fields=fullName1,firstName,lastNameaddress1,city,state,stateCode,country,workEmail,workPhone", {:basic_auth => {:username => '740cfee95ea4fcb56409db37f8a2575cc59b4759' }, :headers => {"Accept" => "application/json" }})
    @json = ActiveSupport::JSON.decode(@json.body)

    @last = HTTParty.get("https://api.bamboohr.com/api/gateway.php/mechina/v1/employees/#{@bamboo.last_employee_added}?fields=fullName1,firstName,lastNameaddress1,city,state,stateCode,country,workEmail,workPhone", {:basic_auth => {:username => '740cfee95ea4fcb56409db37f8a2575cc59b4759' }, :headers => {"Accept" => "application/json" }})
    @last = ActiveSupport::JSON.decode(@last.body)
    

  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    @person = Person.first
    @person.update(person_param)

   
builder = Builder::XmlMarkup.new(:indent=>2)
builder = builder.employee { |b| b.field("#{@person.firstName}", "id" => "firstName"); 
                 b.field("#{@person.lastName}", "id" => "lastName");
                 b.field("#{@person.address}", "id" => "address1");
                 b.field("#{@person.city}", "id" => "city");
                 b.field("#{@person.state}", "id" => "state");
                 b.field("#{@person.workEmail}", "id" => "workEmail");
                 b.field("#{@person.workPhone}", "id" => "workPhone")
              }

response =HTTParty.post('https://api.bamboohr.com/api/gateway.php/mechina/v1/employees', :body => "#{builder}", 
                                             :basic_auth => {:username => "740cfee95ea4fcb56409db37f8a2575cc59b4759"},
                                             :headers => {"Accept" => "application/xml", "Content-Type" => "application/xml"})


      redirect_to "/persons"
      flash["success"] = "New employee added to Bamboohr! Nice!"

  end

  def destroy
  end

private
def person_param
    params.require(:person).permit(:firstName, :lastName, :address, :city, :state, :workEmail, :workPhone, :state)
  end
end
