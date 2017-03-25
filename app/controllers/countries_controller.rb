class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end
  def show
    @country = Country.find(params[:id])
    @name = @country.name
    @blogs = @country.blogs
    @image = @country.image
  end
end
