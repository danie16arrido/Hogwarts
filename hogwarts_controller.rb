require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')
require_relative('./db/sqlrunner.rb')

get '/home' do
  erb(:home)
end

get '/students' do 
  @all_students = Student.all()
  erb(:index)
end


















# binding.pry

# nil