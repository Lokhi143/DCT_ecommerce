class ReviewsController < ApplicationController
	def index
		@reviews = current_user.reviews
	end
	def create
		@review = Review.new(review_params)
		@review.user_id = current_user.id
		if @review.save
			redirect_to :back, notice: "Thank you the review"
		end
	end
	def destroy
         @review = Review.find(params[:id])
         @review.destroy
         redirect_to product_path(@review.product_id), notice: "Deleted"
    end
	private
	def review_params
		params[:review].permit(:title, :body, :rating, :product_id)
	end
end
