class PeopleController < ApplicationController
  def show
  @osoba = Tmdb::Person.detail(params[:id])
  @zdj = Tmdb::Person.images(params[:id])
  end
end
