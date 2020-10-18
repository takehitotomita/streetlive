class Public::MusicsController < ApplicationController
  def index
  end

  def show
    @music = Music.find(params[:id])
  end

  def new
    @music = Music.new
  end

  def create
    music = Music.new(music_params)
    music.save
    redirect_to public_music(params[:id])
  end

  def edit
    @music = Music.find(params[:id])
  end

  def update
    music = Music.find(params[:id])
    music.update(music_params)
    redirect_to public_music_path(params[:id])
  end

  def destroy
  end

  private
  def music_params
    params.require(:music).permit(:img_id, :name, :file, :introduction)
  end
end
