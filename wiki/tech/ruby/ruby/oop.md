# oop

## Seeing Everything as an Object

Initially, Matz looked at other languages to find an ideal syntax. Recalling his search, he said, “I wanted a scripting language that was more powerful than Perl, and more object-oriented than Python2.”

In Ruby, everything is an object. Every bit of information and code can be given their own properties and actions. Object-oriented programming calls properties by the name instance variables and actions are known as methods. Ruby’s pure object-oriented approach is most commonly demonstrated by a bit of code which applies an action to a number.

```ruby
5.times { print "We *love* Ruby -- it's outrageous!" }
```
In many languages, numbers and other primitive types are not objects. Ruby follows the influence of the Smalltalk language by giving methods and instance variables to all of its types. This eases one’s use of Ruby, since rules applying to objects apply to all of Ruby.


## Ruby and the Mixin
Unlike many object-oriented languages, Ruby features single inheritance only, on purpose. But Ruby knows the concept of modules (called Categories in Objective-C). Modules are collections of methods.

Classes can mixin a module and receive all its methods for free. For example, any class which implements the each method can mixin the Enumerable module, which adds a pile of methods that use each for looping.
```rb
class MyArray
  include Enumerable
end
```
Generally, Rubyists see this as a much clearer way than multiple inheritance, which is complex and can be too restrictive.


## methods, methods override

Ruby is seen as a flexible language, since it allows its users to freely alter its parts. Essential parts of Ruby can be removed or redefined, at will. Existing parts can be added upon. Ruby tries not to restrict the coder.

For example, addition is performed with the plus (+) operator. But, if you’d rather use the readable word plus, you could add such a method to Ruby’s builtin Numeric class.

```ruby
class Numeric
  def plus(x)
    self.+(x)
  end
end
y = 5.plus 6
# y is now equal to 11
```
Ruby’s operators are syntactic sugar for methods. You can redefine them as well.



### ex
```rb
# The Greeter class
class Greeter
  def initialize(name)
    @name = name.capitalize
  end

  def salute
    puts "Hello #{@name}!"
  end
end

# Create a new object
g = Greeter.new("world")

# Output "Hello World!"
g.salute
```
https://www.ruby-lang.org/en/examples/greeter/

