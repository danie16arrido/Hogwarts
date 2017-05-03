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

  def self.all()
    sql = "
    SELECT * FROM students;
    "
    result = SqlRunner.run(sql)
    student_hash = result.map { |a_student| Student.new(a_student) }
    return student_hash
  end

  def self.find_by_id(id)
    sql = "
    SELECT * FROM students WHERE id = #{id};
    "
    result = SqlRunner.run(sql)
    return Student.new(result.first())
  end

  def get_house()
    sql = "
      SELECT h.* FROM students s
      INNER JOIN houses h
      ON s.house =  h.id
      WHERE s.id = #{@id}
    "
    result = SqlRunner.run(sql)
    return House.new(result.first())
  end

end
