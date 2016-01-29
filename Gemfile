source 'https://rubygems.org'


#Integrate stripe to accept online payments
gem 'stripe'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Bootstrap with sass
gem 'bootstrap-sass', '3.3.5.1'

#allows usage of of hundreds of icons in the form of <span class>
#check font awesome website for the icons
gem 'font-awesome-sass', '~>4.4.0'

#same as above.
gem "font-awesome-rails"

#user sign_up and login authentication
gem 'devise', '3.4.1'

#gem censors sensitive information that we don't want to post on the web. (passwords)
gem 'figaro'

#HTTP restful calls on external api
gem 'httparty', '~> 0.13.7'

#xml builder with ruby code. i hate xml
gem 'builder', '~> 3.2', '>= 3.2.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Gem for helping create fake names for seed.
gem 'ffaker'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
	gem "minitest-reporters", 	"1.0.5"
	gem "mini_backtrace", 		"0.1.3"
	gem "guard-minitest", 		"2.3.1"

end

group :production do

  	gem "rails_12factor", "0.0.2"
end

ruby '2.2.1'
