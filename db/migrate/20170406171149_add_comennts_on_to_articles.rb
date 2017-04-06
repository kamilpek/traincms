class AddComenntsOnToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :comments_on, :boolean
  end
end
