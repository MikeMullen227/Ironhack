

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name				
      @email = email
    end

end






class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
	calculate_salary = @hours_worked * @hourly_rate 
	end
end


class SalariedEmployee < Employee
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
        
    end

    def calculate_salary
    	calculate_salary = @salary/52
    end

end


class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
    	if @hours_worked > 40
    		overtime = @hours_worked - 40
    		overtime *= 250
    	end
      calculate_salary = (@salary/52) + overtime
    end
end


class Payroll
    def initialize(employees)
        @employees = employees
    end


  def notify_employee
          @employees.each do |x|
          puts "#{x.name}, your gross weekly pay is #{x.calculate_salary}, net weekly pay is #{x.calculate_salary - (x.calculate_salary * 0.18)}"
          end

  end

  def pay_employees

  		@employees.each do |x|
  			puts "#{x.name} => #{x.calculate_salary - (x.calculate_salary * 0.18)}"     
  		end

      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

puts josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

puts nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

puts ted.calculate_salary

mike = HourlyEmployee.new('Mike', 'mmullen227@gmail.com', 15, 40)
will = HourlyEmployee.new('Will', 'will@gmail.com', 15, 40)
alain = HourlyEmployee.new('Alain', 'alain@gmail.com', 15, 40)




employees = [josh, nizar, ted, mike, will, alain]
payroll = Payroll.new(employees)
payroll.pay_employees
# josh => 1750
# nizar => 19230
# etc
# etc
payroll.notify_employee