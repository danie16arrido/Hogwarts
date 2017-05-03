require_relative("../models/student.rb")
require_relative("../models/house.rb")
require_relative('../db/sqlrunner.rb')


house1= House.new({'name' => "Griffindor"})
house2= House.new({'name' => "Ravenclaw"})
house3= House.new({'name' => "Hufflepuff"})
house4= House.new({'name' => "Slytheryn"})

house1.save
house2.save
house3.save
house4.save


student1 = Student.new({
  'first_name' => "Harry",
  'last_name' => "Potter",
  'house'=> house1.id,
  'age' => 20
  })

student1.save

student2 = Student.new({
  'first_name' => "Ron",
  'last_name' => "Weasley",
  'house'=> house2.id,
  'age' => 26
  })

student2.save
