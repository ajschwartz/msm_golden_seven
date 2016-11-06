class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by( :id => params[:id])
  end

  def delete_row
    @actor = Actor.find_by( :id => params[:id])
    @actor.destroy
    redirect_to("http://localhost:3000/actors")
  end

  def new_form

  end

  def create_row
    @actor = Actor.new
    @actor.bio = params[:bio]
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]

    @actor.save
    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find_by( :id => params[:id])
  end

  def update_row
    @actor = Actor.find_by( :id => params[:id])
    @actor.bio = params[:bio]
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]

    @actor.save
    redirect_to("http://localhost:3000/actors")
  end

end
