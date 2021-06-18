class StripeChargesServices
  DEFAULT_CURRENCY = 'usd'.freeze
  
  def initialize(params)
    @stripe_email = params[:stripeEmail]
    @stripe_token = params[:stripeToken]
  end

  def call
    create_charge
  end

  private

  attr_accessor :stripe_email, :stripe_token

  def create_charge
    Stripe::Charge.create(
      customer: "cus_JgFag1A6NSfufU",
      amount: order_amount,
      description: "abc@gmail.com",
      currency: DEFAULT_CURRENCY
    )
  end

  def order_amount
    100
  end
end