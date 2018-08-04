#  code CLI here
class Foster::CLI

  def start
    list_pets
    menu
    goodbye
  end

  def list_pets
    puts "These are our cats or dogs available for foster:"
    puts ""
    puts "Dogs"
    puts "1. Fido"
    puts "2. Fluffy"
    puts "Cats"
    puts "3. Mittens"
    puts "4. Socks"
    puts ""
  end

  def menu
    user_input = nil
    while user_input != "exit"
      puts "Which cat or dog would you like to know more about? Type the number next to the pet's name. Type 'exit' if you are done. Or type 'list' to see the available pets again."
      user_input = gets.strip
      case user_input
      when "1"
        puts "Follow this link to learn more about our pet: Fido link"
      when "2"
        puts "Follow this link to learn more about our pet: Fluffy link"
      when "3"
        puts "Follow this link to learn more about our pet: Mittens link"
      when "4"
        puts "Follow this link to learn more about our pet: Socks link"
      when "list"
        list_pets
      else
        "Enter 'list' or 'exit'."  
      end
    end
  end

  def goodbye
    "Thank you for considering one of our pets to foster!"
  end

end

#   def main_menu
#     puts "If you want to learn about one of our pets available for foster, enter Y."
#     puts ""
#     puts "If you'd like to exit at any time, type 'exit'."
#     user_input = gets.strip
#     if user_input == "Y"
#        display_pets
#     elsif user_input == 'exit'
#        puts "Thank you for considering one of our foster pets!"
#      end
#   end
#
#   def display_pets   #displays all pets in a list
#     puts "Here are all of our pets available for foster:"
#     puts ""
#     Foster::Scraper.scrape_names
#     pets = Foster::Pets.all #each_with_index for all pets - choose # instead of name
#     pets.each.with_index(1) do |pet, index|
#       puts "#{index}. #{pet.name}"
#     end
#     choose_pet
#   end
#
#   def choose_pet
#     puts "Which pet would you like to know more about? Enter the number next to their name."
#     puts ""
#     user_input = gets.strip
#     index = user_input.to_i - 1
#     Foster::Scraper.get_pet_description(url)
#     pets = Foster::Pets.all[index]
#     puts "Here's information about our pet:"
#     # puts Foster::Pets.list_pets - need to make method to list pet descriptions from array
#     Foster::CLI.new.another_pet
#   end
#
#   def another_pet
#     puts "Would you like to see another pet? Enter Y or N."
#     puts ""
#     user_input = gets.strip
#     if user_input == "Y"
#       self.choose_pet #go back to "Which cat or dog..."*
#     elsif user_input == "N"
#       puts "Thank you for considering one of our foster pets! If you are ready to apply, please contact us!"
#     end
#   end
