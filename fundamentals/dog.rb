class Dog
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def play(cat_name, cat_age)
    cat = Cat.new(cat_name, cat_age)
    "#{@name} is chasing #{cat.name}"
  end
end

# dog = Dog.new("Fido", 2)
#
# puts dog.play("Fuzzy", 4)
