class Paperboy

  attr_accessor :name, :experience, :earnings

 def initialize (name, experience, earnings)
   @name = name
   @experience = experience
   @earnings = earnings
 end

 def quota
   quotaexpe = 50 + (@experience/2)
   puts "#{name}'s quota for the next day is #{quotaexpe}"
 end

 def deliver (start_address, end_address)
   amount_of_papers_del = ((end_address - start_address) + 1)
   amount_of_papers_above = (amount_of_papers_del-50)
   @experience += amount_of_papers_del
   @earnings = ( (amount_of_papers_above*0.50) + (amount_of_papers_del-50)*(0.25) )
   puts "My name is #{name}, I've delivered #{amount_of_papers_del} and I've earned #{earnings}"
 end

end





# Every day, each paperboy is given a house number to start at and a house number to finish at.
# They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota.
# If at the end of the day they haven't met their quota, they lose $2.

#The minimum number of papers to deliver is 50. The quota is calculated as half of your experience
#added to the minimum. So the first time a paperboy makes a delivery, the quota is 50. The next time,
#the quote is 50 plus half the number of papers that the paperboy has delivered in the past. In this way
#the quota should increase after every delivery the paperboy makes.
