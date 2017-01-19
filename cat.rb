class Cat
  attr_accessor :name, :preferred_food, :meal_time

    def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    end
      def eats_at

      if @meal_time > 12
  @meal_time = @meal_time - 12
  return "#{@meal_time}PM"

  elsif @meal_time == 12
  return "#{@meal_time}PM"

      else @meal_time < 12
  return "#{@meal_time}AM"
      end

  end
  def meow
    #My name is Sparkles and I eat tuna at 11 AM
    puts "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end
end

#daniel = Cat.new("daniel", "oatmeal", 7)
#justin = Cat.new("Justin", "Lasagna", 10)
