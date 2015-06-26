class RegionsController < ApplicationController

  def index
    @regions = Region.all
    @region = Region.new
    render('regions/index.html.erb')
  end


  def new
    @region = Region.new
    render('regions/new.html.erb')
  end


  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end

end