# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :url
  @@all = []

  # def initialize(name, description, url)
  #   @name = name
  #   @url = url
  #   @@all << self
  # end

  def self.all
  # Foster::Scraper.new.scrape_names
    # pet_1 = Foster::Pets.new
    # pet_1.name = "Marfa"
    # pet_1.url = "http://www.friends4life.org/adopt/adoptable-dogs/adoptable/5227/7631/Marfa"
    #
    # pet_2 = Foster::Pets.new
    # pet_2.name = "Jane"
    # pet_2.url = "http://www.friends4life.org/adopt/adoptable-dogs/adoptable/2266/3504/Jane"
    #
    # [pet_1, pet_2]# @@all  #return instances of pets in array
    @@all << self.scrape_pets
  end

end
