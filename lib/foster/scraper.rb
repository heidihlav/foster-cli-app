# code scrapers here

# class Foster::Scraper
#
#
# end


class Foster::Scraper
  def scrape_names
      # puts "SCRAPE names"
      doc = Nokogiri::HTML(open('http://www.friends4life.org/how-to-help/foster'))
      @detail = doc.css("div.callout li a")
      @detail.each {|li| puts "#{li.text}"}
      binding.pry
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
  # def scrape_article(headline, url)
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
