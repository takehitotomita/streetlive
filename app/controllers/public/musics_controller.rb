class Public::MusicsController < ApplicationController
  def index
    @musics = Music.page(params[:page]).reverse_order
  end

  def search
    @musics = Music.search(params[:search])
  end

  def show
    @music = Music.find(params[:id])
    @band = Band.find(@music.band_id)
  end

  def new
    @music = Music.new
  end

  def create
    music = Music.new(music_params)
    music.band = current_user.band
    if music.save
       redirect_to public_music_path(music.id)
    else
       flash.now[:alert] = "入力漏れがありました。再度入力お願いいたします。"
       render :new
    end
  end

  def edit
    @music = Music.find(params[:id])
    unless music.band == current_user.band
      redirect_to public_music_path(@music.id)
    end
  end

  def update
    music = Music.find(params[:id])
    music.update(music_params)
    redirect_to public_music_path(params[:id])
  end

  def destroy
    music = current_user.band.musics.find(params[:id])
    music.destroy
    redirect_to public_musics_path
  end

  private
  def music_params
    params.require(:music).permit(:img_id, :name, :file, :introduction)
  end
end
