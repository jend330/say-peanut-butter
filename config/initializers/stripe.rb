if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_cCJpl0kBCwbHdqM5h1Y2iYm2',
    :secret_key      => 'sk_test_7M7W3RXngN23Mj3ZgjZaYzcn'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]