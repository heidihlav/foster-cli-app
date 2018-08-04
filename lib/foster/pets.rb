# code pets objects here - individual pets attributes
class Foster::Pets

  attr_accessor :name, :description, :url
  @@all = []

  def initialize(name, description, url)
    @name = name
    @url = url
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.save
  #   # self.class.all << self
  #   self.all << self
  # end
  #
end
