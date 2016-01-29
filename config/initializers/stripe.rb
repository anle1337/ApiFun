Rails.configuration.stripe = {:publishable_key => ENV['test_stripe_publishable_key'],
							  :secret_key 	   => ENV['test_stripe_api_key']
							  }

Stripe.api_key = ENV['test_stripe_api_key']




# Uncomment below for development environment

# Rails.configuration.stripe = {:publishable_key => "pk_test_Z1fh4ZBnS15uMNIRC55Rst9v",
# 							    :secret_key 	 => "sk_test_fVXA0l74WZoZYZuo89m2mDDS"
# 							   }

# Stripe.api_key = "sk_test_fVXA0l74WZoZYZuo89m2mDDS"