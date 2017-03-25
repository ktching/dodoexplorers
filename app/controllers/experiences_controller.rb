class ExperiencesController < ApplicationController
  def index
      @experiences = Experience.all
  end

  def edit
  end

  def new
  end

  def show
    @experiences = Experience.find(params[:id])
    @title = @experiences.name
    @blogs = @experiences.blogs
    @image = @experiences.image
  end
    
    def article_params
        params.require(:experiences).permit(:name, :image)
    end
end
