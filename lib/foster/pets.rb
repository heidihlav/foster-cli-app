# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :url
  @@all = []

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    Foster::Scraper.scrape_pets
  end

end
