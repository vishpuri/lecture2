# Getters are used to access the isntance variables
# stters are used to set the instance variable to a new value

class Card
	def initialize (s, fv)
		@suit = s
		@facevalue = fv
	end
	
	# this is the getter - the name 'suit' should be the same as instance variable
	def suit
		"Card Value is #{@suit}#{@facevalue}"
	end

	# this is the setter - the name 'suit' should be the same as instance variable
	def suit=(newvalue)
	@suit = newvalue
	end
end

c1 = Card.new('H', '5')
# replaces H with C
c1.suit=('C')
puts c1.suit

# the getter setter above can be replace by a single att_accessor line as per below

class Card
	attr_accessor :suit, :facevalue
	def initialize (s, fv)
		@suit = s
		@facevalue = fv
	end
	
	def print
		# can replace instance variable with the getter (in other words take out '@')
		"Card Value is #{suit}#{facevalue}"
	end
	
end

c1 = Card.new('H', '5')
# replaces H with C
c1.suit=('C')
puts c1.print
