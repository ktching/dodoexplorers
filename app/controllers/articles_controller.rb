class ArticlesController < ApplicationController
    def index
        
        #@content1 = "This is content generated by PostsController"
        
        @articles = Article.all 
        #instant variable 'articles' will hold all Posts taken from the database
        
    end
    
    def show
        @article = Article.find(params[:id])
        @type = @article.type_id

    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        if @article.update_attributes(article_params)
            redirect_to article_path, :notice => "Your article has been updated"
        else
            render "edit"
        end
    end
    
    def new
        @article = Article.new
        @type = Type.all
    end
    
    def create
    end
      
    def destroy
    end
    
    def article_params
        params.require(:article).permit(:title, :body, :type_id, :author_id, :teaser, :bannerimage)
    end

end
