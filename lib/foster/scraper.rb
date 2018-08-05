class Foster::Scraper

  def self.scrape_pets
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout ul li:not(:last-child)").each do |pet|
        name = pet.children[0].children[0].text
        binding.pry

        url = pet.children[0].attributes["href"].value
        Foster::Pets.new(name, url)
      end
    # a_pet
  end


end
