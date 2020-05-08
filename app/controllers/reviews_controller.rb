class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def new
    review = Review.new
    respond_to do |format|
      format.html { render :new, locals: { review: review } }
  end

  def create
    review = Review.new(params.require(:review).permit(:rating, :comment, :title))

    respond_to do |format|
      format.html do
        # if question saves
        if review.save
          # success message
          flash[:success] = "Review added successfully"
          # redirect to index
          redirect_to book_url
          # else
        else
          # error message
          flash.now[:error] = "Error: Review could not be added"
          # render new
          render :new, locals: { review: review }
        end
      end
    end
  end
  end
 
end