class Foster::Scraper

  def self.scrape_pets
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout ul li").map do |pet|
        pet_names = pet.children[0].children[0].text
        pet_urls = pet.children[0].attributes["href"].value
        url = pet_urls[0..20]
        name = pet_names[0..20]
        Foster::Pets.new(name, url)
        # binding.pry
    end
  end
#pry for what was sent to @@all

end
