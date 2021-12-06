class TouristsController < ApplicationController
    def index
    @tourists = Tourist.all
    end

    def new
    @tourist = Tourist.new
    end

    def create 
      @tourist = Tourist.new(
      name: params[:tourist][:name],
      pass: params[:tourist][:pass])
      if @tourist.valid?
        flash[:notice] = '追加しました'
        @tourist.pass = BCrypt::Password.create(params[:tourist][:pass])
        @tourist.save
        redirect_to tourists_path
      else
        render 'new'
      end
    end

    def destroy
      tourist = Tourist.find(params[:id])
      tourist.destroy
      redirect_to tourists_path
    end
end