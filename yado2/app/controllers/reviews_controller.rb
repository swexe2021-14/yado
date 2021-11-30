class ReviewsController < ApplicationController
    def new
        @review = Review.new(hotel_id: params[:hotel_id])
    end
    
    def create
       @review = Review.new(hotel_id: params[:review][:hotel_id],
       rcomment: params[:review][:rcomment],tourist_id: current_tourist.id)
        if @review.save
           redirect_to root_path
        else
            render 'new'
        end
       
    end
end
