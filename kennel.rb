require_relative 'dog'

class Kennel

    @@counter = 0

    attr_reader :dogs

  def initialize
    @dogs = []
  end

def self.counter
  @@counter
end

  def add(dog)
    if dog.is_a?(Dog)
      @dogs << dog
      @@counter += 1
    else
      raise "Sorry you need to add a class of Dog instance"
    end
  end

end

sparky = Dog.new('Sparky', 'German sherperd')
fido = Dog.new("Fido", "Daschund")
max = Dog.new("Max", "British terrier")

kennel1 = Kennel.new
kennel1.add(sparky)
p kennel1.dogs.inspect
p Kennel.counter

kennel2 = Kennel.new
kennel2.add(fido)
p kennel2.dogs.inspect
p Kennel.counter

kennel3 = Kennel.new
kennel3.add(max)
p kennel3.dogs.inspect
p Kennel.counter
