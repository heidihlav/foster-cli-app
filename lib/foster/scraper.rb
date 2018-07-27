class Foster::Scraper

  def scrape_names
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @name = doc.css("div.callout li a") #use li because foster care app is an a item
       @name.each {|li| puts "#{li.text}"}
  end

  def scrape_url
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @url = doc.css("div.callout").each {|li| puts "#{li.css('a')[0]['href']}"}
      binding.pry
  end

  def scrape_subheads
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @subheading = doc.css("div.callout h5").first.text  #Urgent needs for dogs heading
      @subheading = doc.css("div.callout h5")[1].text  #Urgent needs for cats heading
  end

end
