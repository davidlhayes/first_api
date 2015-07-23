require 'bundler'
Bundler.require()

def some_json
  {:name => 'Darth Vader', :message => 'The force is strong with this one'}.to_json
end

# http://localhost/
get '/' do
  erb :index #erb says, hey! go find 'index.erb'
end

# http://localhost/api/awesome/
get '/api/awesome' do
  {:title => 'Aliens',
   :release_year => 1986,
   :female_lead => 'Sigourney Weaver',
   :male_lead => 'Paul Reiser',
   :genre => 'Sci-Fi'}.to_json

end

# get: localhost/api/json
get '/api/json' do
  some_json
end
