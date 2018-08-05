#  code CLI here
class Foster::CLI

  def start
    list_questions
    menu
    goodbye
  end

  def list_questions
    puts "These are our most commonly asked questions about fostering a pet:"
    @questions = Foster::Questions.all #returns objects
    #@questions.each.with_index(1) do |q, index|
      #puts "#{index}. #{q}"
    end
  end

  def menu
    user_input = nil
    while user_input != "exit"
      puts "What questions about fostering would you like to know more about? Enter the number next to the question. Type 'exit' if you are done. Or type 'list' to see the questions again."
      user_input = gets.strip

      if user_input.to_i > 0
        the_pet = @questions[user_input.to_i - 1]
        puts "#{the_pet.name}"
      elsif user_input == "list"
        list_pets
      else
        puts "Enter 'list' or 'exit'."
      end
    end
  end

  def goodbye
    "Thank you for considering fostering one of our pets!"
  end

end
