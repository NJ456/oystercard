class Oystercard
  attr_reader :balance
  DEFAULT_LIMIT = 90

  def initialize 
    @balance = 0
  end
  
  def top_up(value)
    fail "The limit of #{DEFAULT_LIMIT} is exceeded." if value + balance > DEFAULT_LIMIT
    @balance += value
  end

  def deduct(fare)
    @balance -= fare
  end 

  def touch_in
    return true
  end 
end