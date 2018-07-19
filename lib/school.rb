require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
      # "#{grade}: #{students}"
      # binding.pry
    end
  end
end
