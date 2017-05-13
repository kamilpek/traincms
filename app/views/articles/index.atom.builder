atom_feed do |feed|
  feed.title "TrainCMS – Artykuły"
  feed.updated @articles.maximum(:updated_at)
  @articles.order("created_at desc").each do |article|
    feed.entry article do |entry|
      entry.title article.title
      entry.content sanitize(article.intro, :tags => {})
      entry.author do |author|
        author.name User.where(id:article.user_id).pluck(:email).last
      end
    end
  end
end
