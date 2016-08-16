class Employee
	attr_reader :name, :email
    def initialze (name, email)
    	@name = name
    	@email = email
    end
 end


 class Hourlyemployee < Employee
 	attr_reader :name, :email
 	def initialize(name, email, hourlyrate, hours)
       @name = name
       @email = email
       @hourlyrate = hourlyrate
       @hours = hours
    end

    def calculate_salary
    	#puts @name + ":" + (@hourlyrate*@hours).to_s
    	(@hourlyrate*@hours)
    end

end

class SalariedEmployee < Employee
	def initialize(name, email, annual_salary)
		@name = name
		@email = email
		@annual_salary = annual_salary
	end

	def calculate_salary
		#puts @name + ":" + (@annual_salary / 52).to_s
		@annual_salary/52
	end	
end

class MixedEmployee < Employee
	def initialize(name, email, annual_salary, overtime_hours, overtime_pay)
		@name = name
		@email = email
		@annual_salary = annual_salary
		@overtime_hours = overtime_hours
		@overtime_pay = overtime_pay
	end

	def calculate_salary
		#puts @name + ":" + ((@annual_salary/52) + ((@overtime_hours - 40)*@overtime_pay)).to_s
		((@annual_salary/52) + ((@overtime_hours - 40)*@overtime_pay))

	end


end
 
class Payroll
	
	def initialize(employees)
		@employees = employees	
	end



	def weekly_payroll
		
		weeklypay = 0

		@employees.each do |employee| 
			puts employee.calculate_salary
		weeklypay += employee.calculate_salary
		#notify_employee(employee)

		end
		puts (weeklypay*1.18)

	end

	def notify_employee(x) 
			puts "Dear #{x.name}, we have sent payment to #{x.email}"
	end
end


josh = Hourlyemployee.new("Josh","Josh@gmail.com", 35, 50)
#puts josh.calculate_salary

daniel = Hourlyemployee.new("Daniel", "Daniel@gmail.com", 15, 40)
#puts daniel.calculate_salary

javier = Hourlyemployee.new("Javier", "Javier@gmail.com", 15, 40)
#puts javier.calculate_salary

nizar = SalariedEmployee.new("Nizar", "Nizar@gmail.com", 1000000)
#puts nizar.calculate_salary

ted = MixedEmployee.new("Ted", "Ted@gmail.com", 60000, 55, 275)
#puts ted.calculate_salary




employees = [josh, nizar, ted, daniel, javier]

weeklysummary = 0

week1 = Payroll.new(employees)

week1.weekly_payroll
week1.notify_employee(josh)
