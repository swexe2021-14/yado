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
        img = params[:hotel][:img].read
        hotel = Hotel.new(place: place, hname: hname, comment: comment, price: price, sptype: sptype, img: img)
        if hotel.save
            redirect_to hotels_path
        else
            render'new'
        end
    end
    
    def destroy
        hotel = Hotel.find(params[:id])
        hotel.destroy
        redirect_to hotels_path
    end
    
    def get_image
        hotel = Hotel.find(params[:id])
        send_data hotel.img, disposition: :inline, type: 'image/png'
    end
    
    def show
       @hotel = Hotel.find(params[:id]) 
    end
    
    def search
        @hotels = Hotel.search(params[:keyword])
        @keyword = params[:keyword]
        render "index"
    end
end
