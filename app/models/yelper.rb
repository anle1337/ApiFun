class Yelper < ActiveRecord::Base

YELP_CONSUMER_KEY = ENV['YELP_CONSUMER_KEY']
YELP_CONSUMER_SECRET = ENV['YELP_CONSUMER_SECRET']
YELP_TOKEN = ENV['YELP_TOKEN']
YELP_TOKEN_SECRET = ENV['YELP_TOKEN_SECRET']


def yelp_search
	client = Yelp::Client.new({ consumer_key: YELP_CONSUMER_KEY,
	                            consumer_secret: YELP_CONSUMER_SECRET,	
	                            token: YELP_TOKEN,
								token_secret: YELP_TOKEN_SECRET
	                         })


	client = client.search("#{address}, #{city}, #{state}", {term: "#{term}", limit: limit, sort: sort})

end



end
