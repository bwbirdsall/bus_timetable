class StationsController < ApplicationController
  def index
    @station = Station.new
    @stations = Station.all
  end

  def create
    @station = Station.new(params[:station])
    if @station.save
      flash[:notice] = "Station added successfully."
      redirect_to stations_path
    else
      render 'index'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "Station deleted."
    redirect_to stations_path
  end
end
