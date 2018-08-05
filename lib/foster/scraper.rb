class Foster::Scraper

  def self.scrape_questions
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout li").each do |pet|
        name = pet.children[0].children[0].text
        url = pet.children[0].attributes["href"].value
        Foster::Questions.new(name, url)
      end
    # a_pet
  end


end
