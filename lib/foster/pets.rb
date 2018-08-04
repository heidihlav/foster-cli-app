# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :url
  @@all = []

  # def initialize(name, description, url)
  #   @name = name
  #   @url = url
  #   @description = description
  #   @@all << self
  # end

  def self.all
    puts ""
    puts "Dogs"
    puts "1. Fido"
    puts "2. Fluffy"
    puts "Cats"
    puts "3. Mittens"
    puts "4. Socks"
    puts ""
    pet_1 = Pets.new
    pet_1.name = "Marfa"
    pet_1.url = "http://www.friends4life.org/adopt/adoptable-dogs/adoptable/5227/7631/Marfa"

    pet_2 = Pets.new
    pet_2.name = "Jane"
    pet_2.url = "http://www.friends4life.org/adopt/adoptable-dogs/adoptable/2266/3504/Jane"

    # @@all  #return instances of pets in array

  end

  
end
