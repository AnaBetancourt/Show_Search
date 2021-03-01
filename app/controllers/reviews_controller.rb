class ReviewsController < ApplicationController
    before_action :set_review, except: [:index, :new, :create]
    before_action :creator_match, only: [:edit, :destroy]
 
    def new
        @show =  TvShow.find_by_id(params[:tv_show_id])
        @review = @show.reviews.build
    end

    def create
        @review = current_user.reviews.build(review_params)

        if @review.save
            creation_success("Review")
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
        @review.destroy
        redirect_to tv_show_path(@review.tv_show)
    end

    private

    def review_params
        params.require(:review).permit(:body, :tv_show_id)
    end

    def set_review
        @review = Review.find(params[:id])
    end  

    def creator_match
        if @review.user != current_user
            redirect_to tv_show_path(@review.tv_show)
        end
    end
    
end
