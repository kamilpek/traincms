class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.text :title
      t.text :content
      t.text :image
      t.boolean :home
      t.boolean :navbar

      t.timestamps
    end
  end
end
