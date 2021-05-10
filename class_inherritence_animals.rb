class Animal

  attr_reader :name, :age

  def name=(name)
    if name == ""
      raise "Name cannot be blank!"
    else
      @name = name
    end
  end

  def age=(age)
    if age < 0
      raise "An age of #{age} isn't valid"
    else
      @age = age
    end
  end

  def talk
    puts "#{@name} says, Woof, woof!"
  end

  def move(destination)
    puts "Dashing to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old!"
  end

end

class Dog < Animal
  def to_s
    "#{name} the dog, age #{age}."
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says, Meeeeeow!"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says, Cheep, cheep!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{name} unrolls!"
    super
  end
end

milo = Dog.new
milo.name = "Milo"
milo.age = 7
puts milo.to_s
milo.talk
puts ""

muggles = Cat.new
muggles.name = "Muggles"
muggles.age = 5
muggles.talk
muggles.report_age
puts ""

magic = Bird.new
magic.name = "Magic"
magic.age = 1
magic.talk
magic.report_age
puts ""

monty = Armadillo.new
monty.name = "Monty"
monty.age = 3
monty.report_age
puts ""
monty.move("shelter")
puts ""
