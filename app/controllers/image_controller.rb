class ImageController < ApplicationController

    private 
    def blog_post_params
    params.require(:blog_post).permit(:title, :content, :main_picture, uploads: [])
  end
end