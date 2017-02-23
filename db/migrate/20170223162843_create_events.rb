class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :title
      t.text :content
      t.boolean :active
      t.boolean :highlight
      t.integer :visit
      t.integer :followers

      t.timestamps
    end
  end
end
