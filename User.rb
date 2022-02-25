
class User 
  attr_accessor :first_name, :money 

  def initialize(first_name, money)
    @first_name = first_name
    @money = money 
  end


  def user_networth 
    "#{first_name}, you have $#{money}"
  end

 
end