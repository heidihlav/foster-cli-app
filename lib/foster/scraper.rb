
# Here is for the name... doc.css("div.callout a").each{|li| puts "#{li.text}"}
# Here is for the url... doc.css("div.callout").each{|li| puts "#{li.css('a')[0]['href']}"}

class Foster::Scraper
  def scrape_names
      # puts "SCRAPE names"
      doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
        @name = doc.css("div.callout li a") #use li because foster care app is an a item
         @name.each {|li| puts "#{li.text}"}
      # @detail.each do |li|
      #   if li.css("a").any?  # to eliminate headlines without detailed story
      #     headline = BizNews::Headline.new
      #     headline.title = li.text.strip
      #     headline.url = "https://www.cnbc.com#{li.css("a")[0]["href"]}"
      #     headline.save
      #   end
      # end
      # BizNews::Headline.all
  end

  def scrape_url
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @url = doc.css("div.callout").each {|li| puts "#{li.css('a')[0]['href']}"}
  end

  def scrape_subheads
    doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @subheading = doc.css("div.callout h5").first.text  #Urgent needs for dogs heading
      @subheading = doc.css("div.callout h5")[1].text  #Urgent needs for cats heading
  end
  # def scrape_url(headline, url)
  #   # puts "SCRAPING #{url}"
  #   article_doc = Nokogiri::HTML(open("#{url}"))
  #   article = BizNews::Article.new
  #   article.title = headline
  #   article.author = article_doc.search("div.source a[itemprop='url']").text
  #   article.content = article_doc.search("div#article_body p").text.strip
  #   article.save
  #   article
  # end
end
