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

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end


















# binding.pry

# nil