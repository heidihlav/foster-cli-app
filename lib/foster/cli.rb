
  #  code CLI here
  class Foster::CLI

    def start
      list_pets
      menu
      goodbye
    end

    def list_pets
      puts "These are our cats or dogs available for foster:"
      @pets = Foster::Pets.all #returns objects
      @pets.each.with_index(1) do |pet, index|
        puts "#{index}. #{pet.name}"
      end
    end

    def menu
      user_input = nil
      while user_input != "exit"
        puts "Which cat or dog would you like to know more about? Type the number next to the pet's name. Type 'exit' if you are done. Or type 'list' to see the available pets again."
        user_input = gets.strip

        if user_input.to_i > 0
          the_pet = @pets[user_input.to_i - 1]
          puts "#{the_pet.name}"
        elsif user_input == "list"
          list_pets
        else
          puts "Enter 'list' or 'exit'."
        end
      end
    end

    def goodbye
      "Thank you for considering one of our pets to foster!"
    end

  end
