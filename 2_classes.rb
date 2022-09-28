# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
# goodbye
# Takes one string as an arg (a name)
# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'

class Greeter

  def hello(arg)
    return "Hello, " + arg
  end 

  def goodbye(arg)
    return "Goodbye, " + arg
  end  

  def goodnight(arg)
    return "Goodnight, " + arg
  end 
  
  def goodmorning(arg)
    return "Goodmorning, " + arg
  end 
end 

# Calculator
# add
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
# history
# takes no args
# returns the results of all previous calculations

class Calculator

def add(number1, number2)
  return number1 + number2
end 

def multiply(number1, number2)
  return number1 * number2
end 

def subtract(number1, number2)
  return number1 - number2
end

def divide(number1, number2)
  return number1 / number2
end

def history
  return add multiply subtract divide
end
end


# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket

class Basket

def initialize
  @basket = []
end 

def add(arg)
  @basket << arg
end

def items
  return @basket
end 
end 


# Cohort
# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
# returns all the students who have been added to the cohort
# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer

class Cohort
  def initialize
    @students = []
    end 

  def add_student(hash)
    @students.push(hash)
    
    end 
    def students
      return @students
end 
def employed_by(employer)
  @students.find_all { |hash| hash['employer'] == employer}
  end


end
    


# Person
# is initialized with a complex hash, for example...
 

{
  'name' => 'alex',
  'pets' => [
    {'name' => 'arthur', 'animal' => 'cat'},
    {'name' => 'judith', 'animal' => 'dog'},
    {'name' => 'gwen', 'animal' => 'goldfish'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '50', 'street' => 'Commercial Street'},
    {'name' => 'home', 'building' => '10', 'street' => 'South Street'}
  ]
}

# work_address
# takes no args
# returns the work address in a nice format
# E.g. '50 Commercial Street'
# home_address
# takes no args
# returns the home address in a nice format
# E.g. '10 South Street'
# pets
# takes no args
# returns a nice summary of the person's pets

# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen
#
class Person 
  def initialize(hash)
   @hash = hash
  end 
  
  def work_address
@hash['addresses'][0]['building'] + " " +  @hash['addresses'][0]['street']
    end
  def home_address
      @hash['addresses'][1]['building'] + " " +  @hash['addresses'][1]['street']
    end
    def pets 
      @hash['name'] + " has 3 pets\n- a " + @hash['pets'][0]['animal'] + " called " + @hash['pets'][0]['name'] +
      "\n- a " + @hash['pets'][1]['animal'] + " called " + @hash['pets'][1]['name'] + "\n- a " + @hash['pets'][2]['animal'] +
      " called " + + @hash['pets'][2]['name'] + "\n"

    end
end