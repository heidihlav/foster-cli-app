#  code CLI here
class Foster::CLI

  def start
    puts "Welcome to Friends for Life Foster page!"
    puts ""
    main_menu
  end

  def main_menu
    puts "Do you want to learn about one of our cats or dogs available for foster? Enter 'cats' or 'dogs'."
    puts ""
    puts "If you'd like to exit at any time, type 'exit'."
    user_input = gets.strip
    if user_input == "cats"
       display_cats
    elsif user_input == "dogs"
       display_dogs
    elsif user_input == 'exit'
       puts "Thank you for considering one of our foster pets!"
     end
  end

  def display_dogs   #displays dogs in a list
    # @dogs in initialize and scrape dogs section
    puts "Here are our urgent needs for Dogs:"
    puts ""
    # Foster::Scraper.new.scrape_names
    Foster::Pets.dogs.each.with_index(1) do |dog, i|
      puts "#{i}. #{dog}"
    end
  end

  def display_cats   #displays cats in a list
    # @cats in initialize and scrape cats section
    puts "Here are our urgent needs for Cats:"
    puts ""
    Foster::Scraper.new.scrape_names
    Foster::Pets.cats.each.with_index(1) do |cat, i|
      puts " #{i}. #{cat}"
    end
  end

  def choose_cat_or_dog
    puts "Which cat or dog would you like to know more about? Enter a number."
    puts ""
    user_input = gets.strip
    index = input.to_i - 1
    #needs to go through scraped indiv pet pages similar to cernan's method
    # game = GamesReview::Game.all[index]
    # if !game.rating || !game.description
    #   GamesReview::Scraper.scrape_game_details(game)
    # end
  end

  def another_cat_or_dog
    puts "Would you like to see another cat or dog? Enter Y or N."
    puts ""
    user_input = gets.strip
    if user_input == "Y"
      self.choose_cat_or_dog #go back to "Which cat or dog..."*
    elsif user_input == "N"
      puts "Thank you for considering one of our foster pets! If you are ready to apply, please contact us!"
      #exits the program
    end
  end

  # def self.end_app
  #     user_input = gets.strip
  #     if user_input == 'exit'
  #       puts "Thank you for considering one of our foster pets!"
  # end


end
