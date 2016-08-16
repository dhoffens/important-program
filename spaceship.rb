class Car
	
	def initialize(name, sound)
		@name = name
		@sound = sound
	end

	def go
		puts "The #{@name} accelerates quickly: #{@sound}"
	end

end

basic = Car.new("Honda", "broom.")
basic.go

sports = Car.new("Challenger", "BROOOOOOM!!!")
sports.go