class AddImageToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :image, :text
  end
end
