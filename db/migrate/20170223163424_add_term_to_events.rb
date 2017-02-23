class AddTermToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :term, :date
  end
end
