class HomeController < ApplicationController

  def index
    @now_playing = Tmdb::Movie.popular
  end

end
