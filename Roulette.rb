# require_relative 'Wallet'
# require_relative 'Math'
# require_relative 'App'
# require_relative 'User'

class Roulette
  attr_accessor :user

  def initialize(user)
    @user = user
    roulette_menu
  end


  def roulette_menu
    puts "Place your bet"
    user_bet = gets.to_i
    @user.money - user_bet
    if @user.money <= user_bet
      puts "You don't have that much money"
      roulette_menu
    else
      puts "Pick a number between 0 - 36"
      user_guess = gets.strip.to_i
      result = rand(0..36)
    end

    puts "The number is #{result}"
    if user_guess == result
      puts "You win"
      puts "Your winnings are #{@user_bet}"
      total = user_bet + @user_money
      puts "You now have $#{total}"
      @user.money += total
  
    else 
      puts "You lose"
    end
    exit
  end
end

