Rails.configuration.stripe = {:publishable_key => ENV['test_stripe_publishable_key'],
							  :secret_key 	   => ENV['test_stripe_api_key']
							  }

Stripe.api_key = ENV['test_stripe_api_key']




