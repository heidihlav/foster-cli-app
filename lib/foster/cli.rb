  class Foster::CLI

    def start
      Foster::Scraper.scrape_pets
      list_pets
      menu
    end

    def list_pets
      puts "Welcome to FFL's foster pets app!"
      puts ""
      puts "These are our cats or dogs available for foster:"
      @pets = Foster::Pets.all
      @pets.each.with_index(1) do |pet, index|
        puts "#{index}. #{pet.name}"
      end
    end

    def menu
      user_input = nil
      while user_input != "exit"
      puts "Which cat or dog would you like to know more about? Type the number next to the pet's name. Type 'exit' if you are done. Or type 'list' to see the available pets again."
      user_input = gets.strip
        case user_input
        when "list"
          list_pets
        when "exit"
          puts "Thank you for considering one of our pets to foster!"
        else
          if (1..@pets.size).include?(user_input.to_i)
            the_pet = @pets[user_input.to_i - 1]
            puts ""
            puts "Visit 'www.friends4life.org#{the_pet.url}' to find out more about #{the_pet.name}!"
            puts ""
          else
          puts "This is not valid option. Enter a number 1 - 21. Or enter 'list' or 'exit'."
          end
        end
      end
    end

    #     if user_input.to_i.between?(1, @pets.size)
    #       the_pet = @pets[user_input.to_i - 1]
    #       puts ""
    #       puts "Visit 'www.friends4life.org#{the_pet.url}' to find out more about #{the_pet.name}!"
    #       puts ""
    #     elsif user_input == "list"
    #       list_pets
    #     elsif user_input == "exit"
    #       puts "Thank you for considering one of our pets to foster!"
    #     else
    #       puts "This is not valid option. Enter a number 1 - 21. Or enter 'list' or 'exit'."
    #     end
    #   end
    # end


  end
