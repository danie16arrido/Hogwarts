require_relative("../models/student")

student1 = Student.new({
  'first_name' => "Harry",
  'last_name' => "Potter",
  'house'=> "Burns",
  'age' => 20
  })

student1.save

student2 = Student.new({
  'first_name' => "Ron",
  'last_name' => "Weasley",
  'house'=> "Burns",
  'age' => 26
  })

student2.save