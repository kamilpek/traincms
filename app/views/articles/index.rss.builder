xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do
  xml.channel do
    xml.title "TrainCMS – Artykuły"
    xml.description "Lista artykułów"
    xml.link articles_url

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.description sanitize(article.intro, :tags => {})
        xml.pubDate article.created_at.to_s(:rfx822)
        xml.link article_url(article)
        xml.guid article_url(article)
      end
    end
  end
end
