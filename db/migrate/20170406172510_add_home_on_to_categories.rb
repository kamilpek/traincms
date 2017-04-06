class AddHomeOnToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :home_on, :boolean
  end
end
