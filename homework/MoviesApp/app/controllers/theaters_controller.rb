class TheatersController < ApplicationController

  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find_by_id(params[:id])
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new
    @theater.name = params[:name]
    @theater.address = params[:address]

    if @theater.save
      redirect_to "/theaters"
    else
      render 'new'
    end
  end

  def edit
    @theater = Theater.find_by_id(params["id"])
  end

  def update
    @theater = Theater.find_by_id(params["id"])
    @theater.address = params[:name]
    @theater.address = params[:address]
    @theater.save

    if @theater.save
      redirect_to "/theaters"
    else
      render 'edit'
    end
  end

  def destroy
    m = Theater.find_by_id(params[:id])
    m.destroy
    redirect_to "/theaters"
  end
end
