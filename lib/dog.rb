class Dog 
  
  attr_accessor :name, :breed, :id
  
  def initialize(id: id=nil, name:, breed:)
    @id = id
    @name = name
    @breed = breed 
  end 
  
  def self.create_table 
    sql = <<-SQL 
    CREATE TABLE IF NOT EXISTS dogs ( 
      id INTEGER PRIMARY KEY, 
      name TEXT, 
      breed TEXT 
      );
      SQL
      
      DB[:conn].execute(sql)
  end 
  
  def self.drop_table 
    sql = <<-SQL 
    DROP TABLE IF EXISTS dogs 
    SQL
    
    DB[:conn].execute(sql)
  end 
  
  def self.save(name, breed)
    db.execute("INSERT INTO dogs (name, breed) VALUES (?, ?);", name, breed) 
  end 
  
  def self.new_from_db
  end 
  
  def self.find_by_name 
  end 
  
  def update 
  end 
    
end 