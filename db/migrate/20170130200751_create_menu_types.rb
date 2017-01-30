class CreateMenuTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_types do |t|
      t.text :title
      t.text :content
      t.integer :order

      t.timestamps
    end
  end
end
