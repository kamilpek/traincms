class AddAdressToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :adress, :string
  end
end
