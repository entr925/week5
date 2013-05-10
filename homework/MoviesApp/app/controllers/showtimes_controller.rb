class ShowtimesController < ApplicationController

  def index
    @showtimes = Showtime.all
  end

  def show
    @showtime = Showtime.find_by_id(params[:id])
  end

  def new
    @showtime = Showtime.new
  end

  def create
    @showtime = Showtime.new
    @showtime.movie_id = params[:movie_id]
    @showtime.theater_id = params[:theater_id]
    @showtime.screen_time = params[:screen_time]
    
    if @showtime.save
      redirect_to "/showtimes"
    else
      render 'new'
    end
  end

  def edit
    @showtime = Showtime.find_by_id(params[:id])
  end

  def update
    @showtime = Showtime.find_by_id(params[:id])
    @showtime.movie_id = params[:movie_id]
    @showtime.theater_id = params[:theater_id]
    @showtime.screen_time = params[:screen_time]
    
    if @showtime.save
      redirect_to "/showtimes"
    else
      render 'edit'
    end
  end

  def destroy
    @showtime = Showtime.find_by_id(params[:id])
    @showtime.destroy
    redirect_to "/showtimes"
  end
end
