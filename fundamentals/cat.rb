=begin
make a dog and cat class and allow them to interact
by playing. practice instantiation inside of each class
file then inside of a "runner" file.
=end

class Cat
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
