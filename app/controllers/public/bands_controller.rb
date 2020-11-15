class Public::BandsController < ApplicationController
  def index
    @bands = Band.page(params[:page]).reverse_order
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
  end

  def update
  end

  def create
  end

  def destroy
  end
  private
  def band_params
    params.require(:band).permit(:name)
  end
end
