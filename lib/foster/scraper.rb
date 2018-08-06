class Foster::Scraper

  def self.scrape_pets
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout ul li").map do |pet|
        pet_names = pet.children[0].children[0].text
        pet_urls = pet.children[0].attributes["href"].value
        url = pet_urls
        name = pet_names
        Foster::Pets.new(name, url)
    end
  end

end
