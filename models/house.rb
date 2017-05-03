class House
  attr_reader :id
  attr_accessor :name

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
  end

  def save()
    sql = "INSERT INTO houses (name) 
          VALUES ('#{@name}')
          RETURNING id;"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql = "
    SELECT * FROM houses;
    "
    result = SqlRunner.run(sql)
    house_hash = result.map { |a_house| House.new(a_house) }
    return house_hash
  end

  def self.find_by_id(id)
    sql = "
    SELECT * FROM houses WHERE id = #{id};
    "
    result = SqlRunner.run(sql)
    return House.new(result.first())
  end

end