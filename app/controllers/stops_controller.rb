class StopsController < ApplicationController
  def index
    @stop = Stop.new
    @stops = Stop.all
  end

  def create
    @stop = Stop.new(params[:stop])
    if @stop.save
      flash[:notice] = "Stop added successfully."
      redirect_to stops_path
    else
      render 'index'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "Stop deleted."
    redirect_to stops_path
  end
end
