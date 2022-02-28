class Wallet 
  
  def initialize(money)
    @wallet = money
  end

  def current_bal
    return @wallet
  end

  def validate_money(money)
    if money > 0 && (@wallet - money) >= 0
      true
    else
      false
    end
  end

  def you_lose(money)
    @wallet -= money
    puts "#{@wallet}"
  end

  def you_win(money)
    @wallet += money
    puts "#{@wallet}"
  end


end