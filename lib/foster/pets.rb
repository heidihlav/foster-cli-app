# code pets objects here - individual pets attributes
class Foster::Pets

  # attr_accessor :name, :description, :url
  @@all = []

  # def initialize(name, description, url)
  #   @name = name
  #   @url = url
  #   @description = description
  #   @@all << self
  # end

  def self.all
    puts "These are our cats or dogs available for foster:"
    puts ""
    puts "Dogs"
    puts "1. Fido"
    puts "2. Fluffy"
    puts "Cats"
    puts "3. Mittens"
    puts "4. Socks"
    puts ""
    # @@all  #return instances of pets
  end

  # def self.save
  #   # self.class.all << self
  #   self.all << self
  # end
  #
end
