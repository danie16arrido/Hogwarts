require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')
require_relative('./models/house.rb')
require_relative('./db/sqlrunner.rb')

get '/home' do
  erb(:home)
end

get '/students' do
  @all_students = Student.all()
  erb(:index)
end

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

post '/students' do #create
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/students/:id' do #Read
  @student = Student.find_by_id( params[:id] )
  erb(:show)
end

get '/students/:id/edit' do #update
  @student = Student.find_by_id( params[:id])
  @houses = House.all()
  erb(:edit)
end

post '/students/:id' do #update
  student = Student.new(params)
  student.update()
  redirect to ('/students/' + "#{params[:id]}")
end

post '/students/:id/delete' do #Delete
  student = Student.find_by_id( params[:id] )
  student.delete()
  redirect to '/students'
end

















# binding.pry

# nil
