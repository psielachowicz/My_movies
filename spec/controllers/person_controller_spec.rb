require_relative '../spec_helper'

describe PeopleController do

 before do
    @person = Tmdb::Person.detail(64)
  end
	it "stronka pobiera stronke" do
   @person.homepage.should match("http")
  end
    it "normalizacja pelna para" do
   @person.id.should be_kind_of(Numeric)
  end
  it "sam sie przyznal" do 
   @person.name.should include("Oldman")
  end 
  it "Big ben" do 
   @person.place_of_birth.should include("London")
  end
  it "wiki" do
   @person.biography.should have_at_least(20).characters
  end 
  it "error!" do
   @person.also_known_as.should_not raise_error()
  end
  it "bezimienny" do
   @person.name.should_not be_nil
  end
  	it "sto lat!" do
   @person.birthday.should match("1958")
  end
  it "wieczne dziecko" do 
   @person.adult.should include("false")
  end 
  it "jestesmy na dobrej drodze" do 
   @person.profile_path.should include("kCWU")
  end
  it "wiki" do
   @person.biography.should have_at_most(2000).characters
  end 
  it "error!" do
   @person.birthday.should_not raise_error()
  end
  it "czym bylby rekord bez id" do
   @person.id.should_not be_nil
  end
end
