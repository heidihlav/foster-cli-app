# code pets objects here - individual pets attributes
class Foster::Pets
  attr_accessor :name, :description, :url, :subheading
  @@all = []

  def initialize(name, description, url)
    @name = name
    @description = description
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

end
