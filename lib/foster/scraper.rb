class Foster::Scraper

  def self.scrape_pets
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    doc.css(".callout ul li").each do |pet|
      name = pet.children[0].children[0].text
      url = pet.children[0].attributes["href"].value
      Foster::Pets.new(name, url)
    end
    # a_pet
  end


end

# def self.scrape_names
#   doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
#   pet_names = doc.css(".callout li")
#   pet_names.each do |pet|
#     name = pet.children[0].children[0].text
#     url = pet.children[0].attributes["href"].value
#     description = Foster::Scraper.get_pet_description(url)
#     new_pet = Foster::Pets.new(name, description, url)
#     # new_pet.description  # new_pet.save
#     binding.pry
#   end
# end
#
# def self.get_pet_description(url)
#   doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
#     url = doc.css("div.callout ul a").map do |i|
#       i.attr('href').tap do |li|
#         bios = Nokogiri::HTML(open('http://www.friends4life.org' + li.gsub(/\s/,"%20")))
#         description = bios.css("div.adoptable-summary p").text # need to use regex to get rid of spaces in bios   pets.
#     end      # binding.pry
#   end      #scrape url and return description
# end
#
#
# # def self.scrape_description
# #   doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
# #     url = doc.css("div.callout ul a").map do |i|
# #       i.attr('href').tap do |li|
# #         bios = Nokogiri::HTML(open('http://www.friends4life.org' + li.gsub(/\s/,"%20")))
# #         description = bios.css("div.adoptable-summary p").text # need to use regex to get rid of spaces in bios   pets.
# #         # binding.pry
# #         #may need to make separate method to store everything scraped in arr
# #     end
# #   end
# # end
