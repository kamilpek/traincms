class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.text :title
      t.boolean :active

      t.timestamps
    end
  end
end
