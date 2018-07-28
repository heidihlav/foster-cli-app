class Foster::Scraper

  def scrape_names
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @name = doc.css("div.callout li a") #use li because foster care app is an a item
       @name.each {|li| puts "#{li.text}"}
  end

  def scrape_url #need to choose individual pets pages to scrape p tag for description - 3 cats and 3 dogs
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      # @url = doc.css("div.callout").each {|li| puts "#{li.css('a')[0]['href']}"}
      # @url = doc.css("div.callout a").each {|i| puts i.attr('href')} #returns urls as string - need to scrape these
      # @url = doc.css("div.callout a").map {|i| i.attr('href')} #returns urls as an array of strings
      @url = doc.css("div.callout a").map {|i| i.attr('href').tap {|li| Nokogiri::HTML(open('http://www.friends4life.org' + li.gsub(/\s/,"%20")))} }
      binding.pry
  end
# doc.css("div.callout").each {|li| puts "#{li.css("a")}"}.each {|l| puts "l"} - to grab bio pages and p tags
  def scrape_subheads
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @subheading = doc.css("div.callout h5").first.text  #Urgent needs for dogs heading
      @subheading = doc.css("div.callout h5")[1].text  #Urgent needs for cats heading
  end

end
