require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.bbcgoodfoods.com

url = 'https://www.bbcgoodfood.com/search/recipes?q=chocolate'

# Download the page source
html = URI.open(url).read
html_doc = Nokogiri::HTML(html)

html_doc.search('.standard-card-new__article-title').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end
