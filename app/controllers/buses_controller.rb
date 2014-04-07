class BusesController < ApplicationController
  def index
    @bus = Bus.new
    @buses = Bus.all
  end

  def create
    @bus = Bus.new(params[:bus])
    if @bus.save
      flash[:notice] = "Bus added successfully."
      redirect_to bus_path(@bus)
    else
      render 'index'
    end
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.busstops.each do |busstop|
      busstop.destroy
    end
    @bus.destroy
    flash[:notice] = "Bus and its busstops deleted."
    redirect_to buses_path
  end
end
