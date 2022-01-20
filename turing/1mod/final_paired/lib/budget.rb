require 'pry'
class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def cheap_departments
    arr = []
    @departments.each do |department|
      if department.expenses <= 500
         arr << department
      end
    end
    arr
  end

  def employees_saleries
    arr = []
    @departments.each do |department|
      department.employees.each do |employee|
        arr << employee.salary
      end
    end
    arr
  end
end
