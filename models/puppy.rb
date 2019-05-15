class Puppy
	attr_accessor :name, :age
	attr_reader :breed

	def initialize(name, breed, age)
		@name = name
		@breed = breed
		@age = age
	end

	def months_old
		@age
	end

	def months_old=(age)
		@age = age
	end
end