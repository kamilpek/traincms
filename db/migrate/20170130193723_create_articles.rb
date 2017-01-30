class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.references :category, foreign_key: true
      t.boolean :active
      t.text :intro
      t.text :content
      t.integer :visit
      t.boolean :highlight

      t.timestamps
    end
  end
end
