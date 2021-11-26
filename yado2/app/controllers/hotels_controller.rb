class HotelsController < ApplicationController
    def index
        @hotels = Hotel.all
    end
    
    def new
        @hotel = Hotel.new
    end
    
    def create
        place = params[:hotel][:place]
        hname = params[:hotel][:hname]
        comment = params[:hotel][:comment]
        price = params[:hotel][:price]
        sptype = params[:hotel][:sptype]
        hotel = Hotel.new(place: place, hname: hname, comment: comment, price: price, sptype: sptype)
        if hotel.save
            redirect_to root_path
        else
            render'new'
        end
    end
    
    def destroy
        hotel = Hotel.find(params[:id])
        hotel.destroy
        redirect_to root_path
    end
end
