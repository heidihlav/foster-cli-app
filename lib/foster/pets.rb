# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :url
  @@all = []
  # binding.pry

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
    # binding.pry
  end

  def self.all
    Foster::Scraper.scrape_pets
    # binding.pry
  end

end

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
