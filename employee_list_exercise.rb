


class Employee
  def initialize(id, first_name, last_name, salary, active)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active  
  end

  def id 
    return @id
  end

  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def salary
    return @salary
  end

  def active
    return @active
  end

  def new_first(name)
    @first_name = name
  end

  def last_first(name)
    @last_name = name
  end

  def salary= (number)
    @salary = number
  end

  def new_status(status)
    @active = status
  end

  
  
end

# employee_list = []
employee = []
removed_employees = []
# @id = employee_list.length + 1
index = 0



while true
  # p "EMPLOYEES (" + employee_list.length.to_s + " total)" 

  
  
  print "[C]reate [R]ead [U]pdate [D]elete [Q]uit:"
  input = gets.chomp.downcase

  if input == "c"
    require 'terminal-table'
    employee_list = []

    print "First name:"
    first_name = gets.chomp
    print "Last name:"
    last_name = gets.chomp
    print "Salary:"
    salary = gets.chomp
    employee_list << Employee.new(@id,first_name, last_name, salary, true)
    employee << employee_list[index].id
    employee << employee_list[index].first_name
    employee << employee_list[index].last_name
    employee << employee_list[index].salary
    
    table = Terminal::Table.new :employee => employee

    puts table

 

    index += 1
    @id += 1
  end

  if input == "r"
    p "Input ID:"
    input_id = gets.chomp.to_i - 1
    puts employee_list[input_id]
  end

  if input == "u"
    print "Enter an ID number"
    employee_id = gets.chomp.to_i - 1
    print "Active? (true/false)"
    status = gets.chomp.downcase.to_s
    employee_list[employee_id].new_status(status)
    print "enter first name"
    name = gets.chomp.to_s
    employee_list[employee_id].new_first(name)
    print "enter last name"
    name = gets.chomp.to_s
    employee_list[employee_id].last_first(name)
    print "enter salary"
    number = gets.chomp.to_i
    employee_list[employee_id].salary=(number)
    p employee_list[employee_id]
  end

  if input == "d"
    p "Input ID:"
    input_id = gets.chomp.to_i - 1
    employee_list.delete_at(input_id)
  end

  if input == "q"
    p "Goodbye!"
    exit
  end

  if input == "p"
    p employee_list
    p "_________end employee list________"
    p "____start removed employees list____"
    p removed_employees
  end

end