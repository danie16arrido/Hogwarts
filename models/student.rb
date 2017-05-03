class Student
  attr_reader :first_name, :last_name, :house, :age

  def initialize(first_name, last_name, house, age )
    @first_name = first_name
    @last_name = last_name
    @house = house
    @age = age
  end

  def save()
    sql "INSERT into students 
        (first_name, last_name, house, age)
        VALUES 
        ('#{@first_name}', '#{@last_name}','#{@house}', '#{@age}')"
        
  end


end
