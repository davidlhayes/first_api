require 'Bundler'
Bundler.require()

# http://localhost/
get '/' do
  {:name => 'Darth Vader', :message => 'The force is strong with this one'}.to_json
end

# http://localhost/api/awesome/
get '/api/awesome' do
  #do something else

end
