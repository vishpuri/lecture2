# Inheretence vs. Composition
module Swimmable
  def swim
    "I am Swimming"
  end
end
# Use modules when you want to give a certain characteristics to subset of sub-classes
# Class variables pertain to the class while instance variable pertain to object instances of the class
# class variables are preceded by @@

class Animal
def run
  "I am running"
end
end

class Dog < Animal
  include Swimmable
  attr_accessor :name
  @@count = 0
  def initialize(name)
    @name=name
    @@count +=1
  end

  def self.total_count
    @@count
  end

end


class Cat < Animal
  attr_accessor :name
  def initialize(name)
    @name=name
  end
end

teddy = Dog.new('Tommy')
puts teddy.name
puts teddy.run
puts teddy.swim
puts Dog.total_count
