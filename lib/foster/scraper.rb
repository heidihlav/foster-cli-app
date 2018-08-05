class Foster::Scraper

  def self.scrape_questions
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout h2").each do |head|

        name = pet.children[0].children[0].text
        url = pet.children[0].attributes["href"].value
        Foster::Questions.new(heading, paragraph)
      end
    # a_pet
  end


end
