class ChargesController < ApplicationController
  rescue_from Stripe::CardError, with: :catch_exception
  def new
  end

  def create
    StripeChargesServices.new(charges_params).call
    redirect_to root_path
  end

  private

  def charges_params
    params.permit(:stripeEmail, :stripeToken)
  end

  def catch_exception(exception)
    flash[:error] = exception.message
  end
end