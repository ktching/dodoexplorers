class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all_types
  helper_method :all_articles
  helper_method :all_blogs
  helper_method :all_experiences
  helper_method :all_countries

  def all_types
  	@types = Type.all
  end

  def all_articles
  	@articles = Article.all
  end

  def all_blogs
  	@blogs = Blog.all
  end

  def all_experiences
  	@experiences = Experience.all
  end

  def all_countries
  	@countries = Country.all
  end
end
