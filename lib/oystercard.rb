class Oystercard
  MAXIMUM_BALANCE = 90
  MININMUM_FARE = 1
  attr_reader :balance
  
  def initialize
    @balance = 0
    @in_journey = false
  end

    def top_up(amount)
        fail "Maximum balance exceeded" if @balance + amount > MAXIMUM_BALANCE
        @balance += amount
    end

    def deduct(amount)
        @balance -= amount
    end

    def touch_in
        fail "no funds" if balance < 1
        @in_journey = true
    end

    def touch_out
        @in_journey = false
    end
    
    def in_journey?
    end
end
