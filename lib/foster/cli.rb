#  code CLI here
class Foster::CLI

  def start
    puts "Welcome to Friends for Life Foster page!"
    puts ""
    main_menu
  end

  def main_menu
    puts "If you want to learn about one of our pets available for foster, enter Y."
    puts ""
    puts "If you'd like to exit at any time, type 'exit'."
    user_input = gets.strip
    if user_input == "Y"
       display_pets
    elsif user_input == 'exit'
       puts "Thank you for considering one of our foster pets!"
     end
  end

  def display_pets   #displays all pets in a list
    puts "Here are all of our pets available for foster:"
    puts ""
    Foster::Scraper.scrape_names
    pets = Foster::Pets.all #each_with_index for all pets - choose # instead of name
    pets.each.with_index(1) do |pet, index|
      puts "#{index}. #{pet.name}"
    end
    choose_pet
  end

  def choose_pet
    puts "Which pet would you like to know more about? Enter the number next to their name."
    puts ""
    user_input = gets.strip
    index = user_input.to_i - 1
    pets = Foster::Pets.all[index]
    # if !pets.description
      Foster::Scraper.scrape_description
    # end
    puts "Here's information about our pet:"
    # puts Foster::Pets.list_pets - need to make method to list pet descriptions from array
    Foster::CLI.new.another_pet
  end

  def another_pet
    puts "Would you like to see another pet? Enter Y or N."
    puts ""
    user_input = gets.strip
    if user_input == "Y"
      self.choose_pet #go back to "Which cat or dog..."*
    elsif user_input == "N"
      puts "Thank you for considering one of our foster pets! If you are ready to apply, please contact us!"
    end
  end

  # def self.end_app
  #     user_input = gets.strip
  #     if user_input == 'exit'
  #       puts "Thank you for considering one of our foster pets!"
  # end


end

# def display_cats   #displays cats in a list
#   # @cats in initialize and scrape cats section
#   puts "Here are our urgent needs for Cats:"
#   puts ""
#   Foster::Scraper.new.scrape_names
#   Foster::Pets.all.each.with_index(1) do |cat, i|
#     puts " #{i}. #{cat}"
#   end
# end

# def main_menu
#   puts "Do you want to learn about one of our cats or dogs available for foster? Enter 'cats' or 'dogs'."
#   puts ""
#   puts "If you'd like to exit at any time, type 'exit'."
#   user_input = gets.strip
#   if user_input == "cats"
#      display_cats
#   elsif user_input == "dogs"
#      display_dogs
#   elsif user_input == 'exit'
#      puts "Thank you for considering one of our foster pets!"
#    end
# end
