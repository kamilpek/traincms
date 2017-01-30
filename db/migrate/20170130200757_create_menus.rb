class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.text :title
      t.references :menu_type, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
