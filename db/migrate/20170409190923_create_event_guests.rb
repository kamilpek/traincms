class CreateEventGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :event_guests do |t|
      t.references :event, foreign_key: true
      t.text :author
      t.text :email
      t.text :ip

      t.timestamps
    end
  end
end
