class Employee
  attr_reader :name, :title, :salary, :boss

  def initialize(name, title , salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    boss.employees << self unless boss.nil?
  end

  def bonus(multiplier)
    salary * multiplier
  end

end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, title , salary, boss = nil)
    @employees = []
    super
  end

  def salaries_sum
    salaries = []

    employees.each do |employee|
      salaries << employee.salary
      salaries << employee.salaries_sum if employee.class == Manager
    end
    salaries.inject(:+)
  end

  def bonus(multiplier)
    salaries_sum * multiplier
  end
end

ned = Manager.new('ned', 'founder', 1000000)
darren = Manager.new('darren', 'ta manager', 78000, ned)
david = Employee.new('david', 'ta', 10000, darren)
shawna = Employee.new('shawna', 'ta', 12000, darren)


print david.bonus(3)
