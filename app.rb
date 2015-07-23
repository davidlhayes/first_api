require 'bundler'
Bundler.require()

# http://localhost/
get '/' do
  {:name => 'Darth Vader', :message => 'The force is strong with this one'}.to_json
end

# http://localhost/api/awesome/
get '/api/awesome' do
  {:title => 'Aliens',
   :release_year => 1986,
   :female_lead => 'Sigourney Weaver',
   :male_lead => 'Paul Reiser',
   :genre => 'Sci-Fi'}.to_json

end
