class Job < ApplicationJob
  include BrowserMethods
  include SharedMethods

  def perform
    Website.all.each do |website|
      items = []
      doc = nokogiri(website.url)
      doc.css(".result").each do |item_tag|
        items << {
          name: item_tag.at_css(".result-desc a").text,
          price: price_str_to_cents(item_tag.at_css(".price").text),
          status: item_tag.at_css(".button a")["title"]
        }
      end

      items
    end
  end

  def alert
  end
end
