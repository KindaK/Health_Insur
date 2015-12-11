class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  	@review = Review.new
  end

  def create
  	@review = Review.new(params.require(:review).permit(:company, :membership_yr, :state, :coverage, :statement))
  	@review.user = current_user
  	if @review.save
  		redirect_to @review, notice: "New review created."
  	else
  		render :new, notice: "There was a problem creating the review."
  	end
  end

  def update
  	respond_to do |format|
  	  if @review.update(review_params)
  	  	redirect_to @review, notice: 'New review added.'
  	  else
  	  	render :new
  	  end
    end
  end

  def destroy
  	@review.destroy
  	respond_to do |format|
  		redirect_to @review, notice: 'Review was successfully destroyed.'
  	end
  end

  def show
  	@review = Review.all
  	set_review
  end

 private

  def set_review
  	begin
  		@review = Review.find(params[:id])
  	rescue ActiveRecord::RecordNotFound
  		flash.now[:notice] = "Review not created."
  		redirect_to new_review_path
  	end
  end

  def review_params
  	params.require(:review).permit(:company, :membership_yr, :state, :coverage, :statement)
  end

end