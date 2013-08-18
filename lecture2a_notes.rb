# joe is an object of Class Person and initialize is the method that creates a new object
# Classes contain behaviors and states
# Objects are manifestations of the states
# The state of the Object can be saved using Instance Variable
# Behaviors correlate to methods
# attr_accessor is a method we use to reduce DRY on getters and setters


class Person
  def initialize(name)
    @name=name

  end

def get_name
  @name
end

def set_name(new_name)
  @name = new_name
end

end

joe = Person.new('joe')
bob = Person.new('bob')

puts joe.get_name
joe.set_name('joseph')
puts joe.get_name

# same result as above using attr_accessor

class Person
  attr_accessor :name, :weight
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
end

joe = Person.new('joe', 150)
bob = Person.new('bob', 150)
puts joe.name
joe.name='joseph'
puts joe.name
puts joe.weight

# use methods to reduce repitition and 'self' for settors
class Person1
  attr_accessor :name,:weight,:height
  def initialize (name,weight,height)
    @name=name
    @weight=weight
    @height=height
  end
  def set_info (new_name,new_weight,new_height)
    self.name=new_name
    self.weight=new_weight
    self.height=new_height
  end

  def info
    "Name: #{name} Weight: #{weight} Height:#{height}"
  end
end

joe = Person1.new('joseph', 250, 180)
puts joe.info
joe.set_info('joey', 200, 185)
puts joe.info

