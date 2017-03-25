class TypesController < ApplicationController
  def index
      @types = Type.all
  end

  def edit
  end

  def new
  end

  def show
    @type = Type.find(params[:id])
    @title = @type.name
    @articles = @type.articles
    @image = @type.image
  end
    
    def article_params
        params.require(:type).permit(:name, :image)
    end
end
