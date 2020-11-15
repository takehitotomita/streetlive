class Public::TopsController < ApplicationController
	def top
		 def search
		    @posts = Post.search(params[:search])
		 end
		 @musics = Music.first(3)
	end

end
