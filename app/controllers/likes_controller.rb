class LikesController < ApplicationController
 
 
 # creates new likes into db
 def create
   @like = current_user.likes.create!(like_params)
   
   respond_to do |format|

     if @like.save
       # Tell the UserMailer to send a like info emailed after save
       UserMailer.like_email(@like).deliver

        format.html { redirect_to trips_path}
        format.json { render :show, status: :created, location: @like }
      else
        format.html { redirect_to signup_path}
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

 private
 def like_params
   params.require(:like).permit(:vineyard_tours, :cave_tours, :great_views, :food_pairing, :groups, :kid_friendly, :dog_friendly, :bachelorettes, :picnic, :staff_picks, :organic_wineries, :architecture, :top_reds, :top_whites, :sparkling_wines, :dessert_wines)
 end

end