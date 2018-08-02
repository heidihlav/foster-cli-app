# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :description, :url
  @@all = []

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end
# binding.pry
end
