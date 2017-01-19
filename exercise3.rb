    class Player
  attr_accessor :gold_coins, :health_points, :lives, :score

    def initialize(gold_coins = 0, health_points = 10, lives = 5, score = 0)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
    @score = score
    end

      def do_battle

      if @health_points >1
        @health_points -= 1

      else
      @lives -= 1
      @health_points += 10
      restart
      end
    end

    def restart
      puts "in restart"
      if @lives <= 0
        @gold_coins = 0
        @health_points = 10
        @lives = 5
        @score = 0
      end
    end

    #increase life by 1 subtract 10 from score
    def level_up
      if @lives >=0
        @lives +=1
        @score -=10
      end
    end

#Your class should have an instance method called collect_treasure that accepts one
#number as an argument and adds that amount to gold_coins. If gold_coins is ten or
# greater, score should increase by one and gold_coins should decrease by ten.
#If score reaches ten then the collect_treasure method should run the level_up method.
    def collect_treasure(gold_addition)
      @gold_coins += gold_addition

      if @gold_coins >= 10
        @score +=1
        @gold_coins -=10

      if @score >= 10
        @lives +=1
        @score -=10
      end
      end
    end

    # sathes = Player.new(9,1,1,9)






      end


#sathes = Player.new(4,3,2,1)
