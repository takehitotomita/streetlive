class Admin::TopsController < ApplicationController
  def top
  	@musics = Music.created_today
  end
end
