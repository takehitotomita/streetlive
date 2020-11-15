class Admin::MusicsController < ApplicationController
  def index
  	@musics = Music.all
  end

  def show
    @music = Music.find(params[:id])
  end

  def update
  end

  def destroy
  	music =  Music.find(params[:id])
  	music.destroy
  	redirect_to admin_musics_path
  end
end
