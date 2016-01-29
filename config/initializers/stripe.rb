Rails.configuration.stripe = {:publishable_key => ENV['TEST_STRIPE_PUBLISHABLE_KEY'],
							  :secret_key 	   => ENV['TEST_STRIPE_API_KEY']
							  }

Stripe.api_key = ENV['TEST_STRIPE_API_KEY']




