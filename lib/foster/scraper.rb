class Foster::Scraper

  def self.scrape_pets
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout ul li").each do |pet|
        name = pet.children[0].children[0].text
        url = pet.children[0].attributes["href"].value
        name
        url
        Foster::Pets.new(name, url)
    end
  end

end
