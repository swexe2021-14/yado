class ReviewsController < ApplicationController
    def index
        @reviews = Review.new(hotel_id: params[:hotel_id])
    end
    
    def new
        @review = Review.new(hotel_id: params[:hotel_id])
    end
    
    def create
       @review = Review.new(
       hotel_id: params[:review][:hotel_id],star: params[:review][:star],
       rcomment: params[:review][:rcomment],tourist_id: current_tourist.id)
        if @review.save
           redirect_to controller: :hotels, action: :show, id: params[:review][:hotel_id]
        else
            render 'new'
        end
       
    end
end
