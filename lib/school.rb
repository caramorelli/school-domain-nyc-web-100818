

class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def roster 
    @roster 
  end 
  
  def add_student(name, grade)
    if @roster.empty? 
      @roster[grade] = [name]
    elsif @roster.has_key?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end 
  end 
  
  def grade(num)
    @roster[num]
  end 
  
  def sort 
    @roster.each do |key, val|
      @roster[key] = val.sort
    end 
  end 
  

end 