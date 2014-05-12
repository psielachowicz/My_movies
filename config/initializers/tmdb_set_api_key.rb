puts "-"*44
puts "API KEY: #{ENV['TMDB_API_KEY']}"
puts "-"*44
Tmdb::Api.key('c9f0972e0a727429926b7728ce830812')
Tmdb::Api.language("pl")  # setup your default language
