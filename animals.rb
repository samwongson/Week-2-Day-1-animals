module Flight

  attr_accessor :airspeed_velocity
  @airspeed_velocity = 15

  def fly
    puts "I'm a #{self.class}, I'm flying!"    
  end

  # def airspeed_velocity()
  #   @airspeed_velocity ||= 15
  # end
  
end



class Animal
  attr_accessor :legs, :blood

  def initialize(legs, blood)
    @legs = legs
    @blood = blood
  end

  def warm_blooded?
      self.blood
  end

  

end

class Mammal < Animal

  def initialize(legs)
    super(legs, true)
  end

end

class Amphibian < Animal

  def initialize
    super(4, false)

  end

end

class Primate < Mammal

  def initialize
    super(2)
  end


end

class Frog < Amphibian

  def initialize
    super
  end
end

class Bat < Mammal
    include Flight
    def initialize
      super(2)
    end

    def airspeed
      self.airspeed_velocity
    end

end

class Parrot < Animal
  include Flight
  def initialize
    super(2, true)
  end

end

class Chimpanzee < Primate

  def initialize
    super
  end
end

chimp = Chimpanzee.new

puts chimp.warm_blooded?
puts chimp.class

polly = Parrot.new
polly.fly

silverwing = Bat.new
silverwing.fly
puts silverwing.airspeed