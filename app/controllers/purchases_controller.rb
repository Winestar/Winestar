class PurchasesController < ApplicationController
  def index
  	@purchases = Purchase.all.order(created_at: :desc)
  end

  def create
  	@purchase = Purchase.new new_purchase_params
    charge_card
    @purchase.save

    redirect_to @purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    render :new
  end

  def new
  	@purchase = Purchase.new
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
      params.require(:purchase).permit(:card_token)
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
        description: 'Mission Fresh Air',
        currency: 'usd',
        source: params[:purchase][:card_token]
      )
    end
end
