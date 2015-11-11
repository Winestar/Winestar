class PurchasesController < ApplicationController
  def index
  	@purchases = Purchase.all.order(created_at: :desc)
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_purchases_path
  end

  def update
  end

  def show
  end

  private

    def to_param
     uuid
    end

  	def purchase_params  
      params.require(:purchase).permit(:email, :card_token)
    end

    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

    def new_purchase_params
      {amount: 22}.merge(purchase_params)
    end

    def charge_card
      Stripe::Charge.create(
        amount: 2200,
        description: 'Winestar',
        currency: 'usd',
        source: params[:purchase][:card_token]
      )
    end
end
