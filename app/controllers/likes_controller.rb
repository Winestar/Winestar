class LikesController < ApplicationController
  
  # form to create like
  def new
    @like = Like.new
    render :new
  end
  
  # creates new likes into db
  def create
    @like = Like.new(like_params)
    if @like.save

      # redirected_to @user, notice: "Signed up successfully."
      # session[:user_id] = user.user_id
      redirect_to trips_path
    else
      # format.html { render action: "new"}
      redirect_to likes_path
    end
  end

  private
  def like_params
    params.require(:like).permit(:vineyard_tours, :cave_tours, :great_views, :food_pairing, :groups, :kid_friendly, :dog_friendly, :bachelorettes, :picnic, :staff_picks, :organic_wineries, :architectiure, :top_reds, :top_whites, :sparkling_wines, :dessert_wines)
  end

end
