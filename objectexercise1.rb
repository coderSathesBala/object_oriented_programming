  class BankAccount
  attr_accessor :balance, :interest_rate

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

def increase(deposit_amount)
  @balance += deposit_amount
  puts "ADDING #{@balance} + #{deposit_amount}"
end

def decrease(deposit_amount)
  @balance -= deposit_amount
  puts "SUBTRACT #{@balance} - #{deposit_amount}"
end 

  def interest
    @balance = @balance + (@balance*(@interest_rate))
    puts "MULTIPLICATION #{balance} * #{interest_rate}"
  end
  end
