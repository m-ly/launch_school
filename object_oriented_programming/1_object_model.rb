

module Description
  def usage(definition)
    puts definition
  end
end

class Bike
  include  Description
end



mountain_bike = Bike.new
mountain_bike.usage("Mountain bikes are used for steep and uneven terrain.")


module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end 

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")
joe = HumanBeing.new
joe.speak("Hello!")

puts "Hello World!"