class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    if @sneaker.save
      redirect_to sneaker_path(@sneaker)
    else
      render 'new'
    end
  end

  private

  def sneaker_params
    params.require(:sneaker).permit(:name)
  end
end
end
