class ReviewsController < ApplicationController
 
    def new
        @show =  TvShow.find_by_id(params[:tv_show_id])
        @review = @show.reviews.build
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user

        if @review.save
            flash[:message] = "Review was successfully created."
            redirect_to tv_show_path(@review.tv_show)
        else
            @show =  TvShow.find_by_id(params[:tv_show_id])
            render :new
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            flash[:message] = "Review was successfully edited."
            redirect_to review_path(@review)
        else
            render :edit
        end
    end

    def destroy
        @review = Review.find(params[:id])
        @review.delete
        redirect_to tv_show_path(@review.tv_show)
    end

    private

    def review_params
        params.require(:review).permit(:body, :tv_show_id)
    end
    
end
