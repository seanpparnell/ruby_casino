require_relative 'Wallet'
require_relative 'User'
# require_relative 'Blackjack'
require_relative 'Roulette'

class App
  attr_accessor :user

  def initialize
    welcome_menu
    @user_create = create_user
  end

  def welcome_menu
    puts "Welcome to the Casino"
  end

  def create_user
    puts "What is your first name?"
    f_name = gets.strip
    puts "How much money would you like to use?"
    money = gets.strip.to_i
    @user = User.new(f_name, money)
    puts "#{@user.money}"
    game_menu
  end

  def game_menu
    puts "What game would you like to play?"
    puts "1) Black Jack"
    puts "2) Roulette"
    puts "3) View Wallet"
    puts "4) Exit"
    menu_choice = gets.strip.to_i
    if menu_choice == 1
      Blackjack.new(@user)
      game_menu
    elsif menu_choice == 2
      Roulette.new(@user)
    elsif menu_choice == 3
        puts "#{@wallet}"
    elsif menu_choice == 4
      "See you next time"
      exit
    else
      "Wrong choice, try again"
      game_menu 
    end
  end

end

app = App.new