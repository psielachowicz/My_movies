require 'spec_helper'

describe "movies/show.html.erb" do
before(:each) do
    @configuration = Tmdb::Configuration.new
    @movie = Tmdb::Movie.detail(550)
  end
    it "wyswietl budzet" do
    expect(@movie.budget).to match(63000000)
  end
  it "rate w dobrych granicach" do
    expect(@movie.vote_count).to be > 100
  end
  it "dobra droga" do
    expect(@movie.poster_path).to start_with("/r5m")
  end
  it "dobry tytul" do
    expect(@movie.original_title).to end_with("Club")
  end
  it "imdb test" do
    expect(@movie.imdb_id).to match("tt0137523")
  end
  it "wazne dane: revenue" do
    expect(@movie.revenue).to match(100853753)
  end
  it "wazne dane: runtime" do
    expect(@movie.runtime).to match(139)
  end
  it "wazne dane: status" do
    expect(@movie.status).to match("Released")
  end
  it "id check" do
    expect(@movie.id).to start_with(5)
  end
  it "test rasdzenia sobie z nilem" do
    expect(@movie.belongs_to_collection).to be_nil
  end
end
