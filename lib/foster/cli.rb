# # code CLI here
class CLI
# Foster::
  def start
    puts "Welcome to Friends for Life Foster page!"
    puts ""
    puts "Do you want to learn about one of our cats or dogs available for foster? Enter 'cats' or 'dogs'."
  end

  def main_menu
    puts "Do you want to learn about one of our cats or dogs available for foster? Enter 'cats' or 'dogs'."
    user_input = gets.strip
    if user_input == "cats"
       cats
    elsif user_input == "dogs"
       dogs
     end
  end

  def dogs   #displays dogs in a list
    # @dogs in initialize and scrape dogs section
    puts "Here are our urgent needs for Dogs:"
    @dogs.each.with_index(1) do |dog, index|
      puts "#{index}. #{dog.name}"
    end
  end

  def cats   #displays cats in a list
    # @cats in initialize and scrape cats section
    puts "Here are our urgent needs for Cats:"
    @cats.each.with_index(1) do |cat, index|
      puts "#{index}. #{cat.name}"
  end
end

CLI walkthrough -

# puts "Welcome to Friends for Life Foster page!"
# puts ""
# puts "Do you want to learn about one of our cats or dogs available for foster? Enter 'cats' or 'dogs'."

# user_input = gets.strip
# user_input = "cats" || "dogs"

# *Scrape main foster page*
#
# If user_input = "dogs"
# *Display names*
# puts "Here are our urgent needs for Dogs:" *use index to display with names. "1. Tamale" so each_with_index?
#   -Dog name
#   -Dog name
#   -etc
#
# *If "cats" -*
# *Display names*
# puts "Here are our urgent needs for Cats:" *use index to display with names. "1. Tamale"
#   -Cat name
#   -Cat name
#   -etc

puts "Which cat or dog would you like to know more about? Enter a number 1 - 10."
user_input = gets.strip.to_i
*User enters 1 - 10*

*Displays individual pet name and description* - have to scrape individual pet page

puts "Would you like to see another cat or dog? Enter Y or N."
user_input = gets.strip

*If yes
   go back to "Which cat or dog..."*

*If no
 *"Thank you for considering one of our foster pets! If you are ready to apply, please contact us!"*
 *exits the program*
