require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')

get '/home' do
  erb(:index)
end


















# binding.pry

# nil