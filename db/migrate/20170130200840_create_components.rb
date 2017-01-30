class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.text :title
      t.text :content
      t.integer :order
      t.references :position, foreign_key: true

      t.timestamps
    end
  end
end
