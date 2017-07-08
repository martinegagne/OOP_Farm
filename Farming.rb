require_relative "OOP_Farm"

class Farming

  def farming_menu
    while true
      print_farming_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
end

def print_farming_menu
  puts "[1] Status"
  puts "[2] Relax"
  puts "[3] Harvest"
  puts "[4] Leave the farm"
  puts "Enter a number:"
end
