class LikesController < ApplicationController
  
  # def index
  #   @likes = Like.all
  # end

  # # def show
  # #   @like = Like.find(params[:id])
  # # end

  # form to create like
  # def new
  #   @like = current_user.likes.new
  #   # @user = user.find(params)
  #   render :new
  # end
  
  # creates new likes into db
  def create
    @like = current_user.likes.create!(like_params)
    

    respond_to do |format|
      if @like.save

        # flash[:notice] = "You Signed up successfully"

        # Tell the UserMailer to send a welcome email after save
        UserMailer.like_email(@like).deliver

        format.html { redirect_to trips_path}
        format.json { render :show, status: :created, location: @like }
      else
        format.html { redirect_to signup_path}
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end

    # respond_to do |format|
    #   if @like.save
    #     # Tell the UserMailer to send a welcome email after save
    #     UserMailer.like_email(@like).deliver

    #     format.json { render :show, status: :created, location: @like }
    #   else
    #     format.html { redirect_to trips_path}
    #     format.json { render json: @like.errors, status: :unprocessable_entity }
    #   end
    # end
    # if @like.save
    #   # @user = current_user
    #   # redirected_to @user, notice: "Signed up successfully."
    #   # session[:user_id] = user.user_id
    #   redirect_to trips_path
    # else
      # format.html { render action: "new"}
      # redirect_to trips_path
    # end
  end


  private
  def like_params
    params.require(:like).permit(:vineyard_tours, :cave_tours, :great_views, :food_pairing, :groups, :kid_friendly, :dog_friendly, :bachelorettes, :picnic, :staff_picks, :organic_wineries, :architecture, :top_reds, :top_whites, :sparkling_wines, :dessert_wines)
  end

end
