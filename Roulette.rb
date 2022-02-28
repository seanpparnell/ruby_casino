require_relative 'Wallet.rb'
# require_relative 'Math'
# require_relative 'App.rb'
require_relative 'User.rb'

class Roulette
  attr_accessor :user

  def initialize(user)
    @user = user
    roulette_menu
  end


  def roulette_menu
    puts "Place your bet"
    user_bet = gets.to_i
    if validate_money(user_bet)
      puts "Pick a number between 0 - 36"
      user_guess = gets.strip.to_i
      result = rand(0..36)
    else
      puts "You don't have that much money"
      roulette_menu
    end

    puts "The number is #{result}"
    if user_guess == result
      puts "You win"
      you_win(user_guess)
      puts "Your winnings are #{@user_bet}"
      puts "You now have $#{@wallet}"
    else 
      puts "You lose"
      roulette_menu
    end
    exit
  end
end

