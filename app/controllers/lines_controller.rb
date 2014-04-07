class LinesController < ApplicationController
  def index
    @line = Line.new
    @lines = Line.all
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = "Line added successfully."
      redirect_to lines_path
    else
      render 'index'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "Line deleted."
    redirect_to lines_path
  end
end
