require_relative 'field.rb'

class Farm

  def initialize
  end

  def farming_menu
    while true
      print_farming_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
end

def print_farming_menu
  puts "[1] Field"
  puts "[2] Harvest"
  puts "[3] Status"
  puts "[4] Relax"
  puts "[5] Leave the farm"
  puts "Please choose one of the following farming options."
end

def call_option (user_selected)
  case user_selected
  when 1 then field
  when 2 then harvest
  when 3 then status
  when 4 then relax
  when 5 then exit
  end
end

def field
  puts "Corn or wheat field?"
  field_type = gets.chomp

  puts "What size (in Hectars) is the field?"
  field_size = gets.chomp
   if field_type == 'corn'
     Corn.create('corn', field_size)
   elsif field_type == 'wheat'
     Wheat.create('wheat', field_size)
   else
     puts "Please enter a valid entry"
     farming_menu
   end
 end

def self.harvest
  Field.harvest
end

def self.status
  Field.status
end

def self.relax
  Field.relax
end

end

a_farm_app = Farm.new
a_farm_app.farming_menu
a_farm_app.print_farming_menu
