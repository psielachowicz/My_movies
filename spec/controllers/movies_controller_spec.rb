require_relative '../spec_helper'

describe MoviesController do

before do
    @movie = Tmdb::Movie.detail(550)
  end

   it "plakat musi byc zdjeciem" do
   @movie.backdrop_path.should match(".jpg")
  end
  it "wiedzialem, ze o czyms zapomnialem" do
   @movie.original_title.should_not be_nil
  end
  it "to niestety nie jest kolekcja" do
   @movie.belongs_to_collection.should be_nil
  end
  it "duzy budzet to podstawa" do
   @movie.budget.should > 100000
  end
  it "u 'id' wszystko po staremu" do 
   @movie.id.should match(550)
  end 
  it "cyferki" do
   @movie.revenue.should be_kind_of(Numeric)
  end
  it "nie da sie ukryc" do 
   @movie.tagline.should include("Anarchia")
  end 
 # it "wieele gatunkow" do
  # @movie.genres.should have_at_least(2).items
  #end
  it "nie ma w google, nie ma w ogole" do
   @movie.homepage.should be_empty
  end
  it "niezly numer" do
   @movie.popularity.should be_kind_of(Numeric)
  end
  it "nie chcemy slabych filmow, na szczescie ten jest dobry" do
   @movie.vote_average.should satisfy { |v| v > 6 }
  end
  #it "komu sie chce to czytac?" do
  # @movie.overview.should have_at_least(50).characters
  #end 
  it "walka!" do 
   @movie.original_title.should include("Fight")
  end 
  #it "Nie chce tutaj zadnych bledow" do
   #@movie.poster_path.should_not raise_error()
  #end 
   it "imbd tt" do
   @movie.imdb_id.should match("tt")
  end 
  it "kiedy ta premiera?" do
   @movie.status.should match("Released")
  end
  it "chwytliwy tekst" do
   @movie.tagline.should_not be_nil
  end
  it "filmy niszowe" do
   @movie.runtime.should < 200
  end
  #it "na koniec swiata i z powrotem" do
   #@movie.production_countries.should have_at_least(1).items
  #end
  it "int id" do
   @movie.id.should be_kind_of(Numeric)
  end
  it "liczby, liczby" do
   @movie.revenue.should be_kind_of(Numeric)
  end
  it "cyfry, cyfry" do
   @movie.runtime.should be_kind_of(Numeric)
  end
  it "money, money, money..." do
   @movie.budget.should satisfy { |pieniadz| pieniadz > 6000000 }
  end
  it "ilosc glosow tez sie liczy" do
   @movie.vote_count.should satisfy { |v| v > 100 }
  end
  #it "co za dlugie pytanie" do
   #@movie.overview.should have_at_least(20).characters
  #end 
  ##it "na temat" do
   #@movie.title.should have_at_most(15).characters
  #end 
  it "im krocej, tym lepiej" do
   @movie.homepage.should have_at_most(1).characters
  end 
  it "Chateau Valons, rocznik 1999" do 
   @movie.release_date.should include("1999")
  end 
  #it "Nie chce tutaj zadnych bledow" do
   #@movie.poster_path.should_not raise_error()
  #end 
   it "imbd tt" do
   @movie.imdb_id.should match("tt")
  end 
end
