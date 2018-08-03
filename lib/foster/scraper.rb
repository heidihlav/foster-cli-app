class Foster::Scraper

  def self.scrape_names
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
    pet_names = doc.css(".callout li")
    pet_names.each do |pet|
      new_pet = Foster::Pets.new
      new_pet.name = pet.children[0].children[0].text
      new_pet.url = pet.children[0].attributes["href"].value
      new_pet.description = Foster::Scraper.get_pet_description(new_pet.url)
      new_pet.save
      binding.pry
    end
  end

  def self.get_pet_description(url)
      #scrape url and return description

  end



      name = doc.css("div.callout li a")
      url = doc.css("div.callout ul a").map do |i|
        i.attr('href')
      end
      name.each_with_index do |li, index|
        Foster::Pets.new("#{li.text}", url[index])
        # binding.pry
      end
  end




  def self.scrape_description
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      url = doc.css("div.callout ul a").map do |i|
        i.attr('href').tap do |li|
          bios = Nokogiri::HTML(open('http://www.friends4life.org' + li.gsub(/\s/,"%20")))
          description = bios.css("div.adoptable-summary p").text # need to use regex to get rid of spaces in bios   pets.
          # binding.pry
          #may need to make separate method to store everything scraped in arr
      end
    end
  end

# doc.css("div.callout").each {|li| puts "#{li.css("a")}"}.each {|l| puts "l"} - to grab bio pages and p tags
  # def scrape_subheads
  #   doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
  #     @subheading = doc.css("div.callout h5").first.text  #Urgent needs for dogs heading
  #     @subheading = doc.css("div.callout h5")[1].text  #Urgent needs for cats heading
  # end

end
