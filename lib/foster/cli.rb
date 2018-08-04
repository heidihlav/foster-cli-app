#  code CLI here
class Foster::CLI

  def start
    list_pets
    menu
    goodbye
  end

  def list_pets
    @pets = Foster::Pets.all
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
