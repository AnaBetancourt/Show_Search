class ReviewsController < ApplicationController
 
    def new
        @review = Review.new
    end

    def create
        @review = review.new(review_params)
        @review.user = current_user

        if @review.save
            flash[:message] = "Review was successfully created."
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        if @review.update(review_params)
            flash[:message] = "Review was successfully edited."
            redirect_to review_path(@review)
        else
            render :edit
        end
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:body)
    end
    
end
