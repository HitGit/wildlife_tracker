class SightingsController < ApplicationController
  def new
    species = Species.find(params[:id])
    @sighting = species.sightings.new
    @sightings = Sighting.new
    render('sightings/new.html.erb')
  end


  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end


  def show
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end


  def index
    @sightings = Sighting.all.joins(:species).order("species.name ASC")
    @sighting = Sighting.new
    render('sightings/index.html.erb')
  end


  def edit
    @sighting = Sighting.find params[:id]
    render('sightings/edit.html.erb')
  end

end