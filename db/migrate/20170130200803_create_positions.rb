class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.text :title
      t.integer :width

      t.timestamps
    end
  end
end
