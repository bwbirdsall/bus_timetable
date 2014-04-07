class BusstopsController < ApplicationController
  def create
    @busstop = Busstop.new(params[:busstop])
    if @busstop.save
      flash[:notice] = "Busstop added successfully."
      redirect_to bus_path(@busstop.bus)
    else
      redirect_to bus_path(@busstop.bus)
    end
  end

  def destroy
    @busstop = Busstop.find(params[:id])
    @busstop.destroy
    flash[:notice] = "Busstop deleted."
    redirect_to bus_path(@busstop.bus)
  end
end
