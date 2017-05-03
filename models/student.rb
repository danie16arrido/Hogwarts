class Student
  attr_reader :id
  attr_accessor :first_name, :last_name, :house, :age

  def initialize(params)
    @id = params['id'].to_i
    @first_name = params['first_name']
    @last_name = params['last_name']
    @house = params['house']
    @age = params['age'].to_i
  end

  def save()
    sql = "INSERT INTO students 
        (first_name, last_name, house, age)
        VALUES 
        ('#{@first_name}', '#{@last_name}','#{@house}', '#{@age}')
        RETURNING id;"
    student_data = SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end


end
