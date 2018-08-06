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
      @pets_ary = @pets[21]
      @pets_ary.map.with_index(1) do |pet, index|
        puts "#{index}. #{pet.name}"
      end
    end

    def menu
      user_input = gets.strip
      while user_input != "exit"
        puts "Which cat or dog would you like to know more about? Type the number next to the pet's name. Type 'exit' if you are done. Or type 'list' to see the available pets again."
        user_input = gets.strip

        if user_input.to_i - 1 < 23
          @pets_ary = @pets[21]
          the_pet = @pets_ary[user_input.to_i]
          # binding.pry
          puts ""
          puts "Visit 'www.friends4life.org#{the_pet.url}' to find out more about #{the_pet.name}!"
          puts ""
        elsif user_input == "list"
          list_pets
        elsif user_input == "exit"
          goodbye
        else
          puts "Enter 'list' or 'exit'."
        end
      end
    end

    def goodbye
      "Thank you for considering one of our pets to foster!"
    end

  end
