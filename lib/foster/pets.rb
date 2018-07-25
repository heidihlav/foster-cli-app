# code pets objects here - individual pets attributes
class Foster::Pets
  attr_accessor :name, :description, :url, :cats, :dogs
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

  # def cats
  # # pass in cats scraped from FFl webpage
  # end

  #each or each with index - diff iterators


end
