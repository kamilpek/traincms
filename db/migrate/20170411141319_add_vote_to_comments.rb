class AddVoteToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :vote_plus, :integer
    add_column :comments, :vote_minus, :integer
  end
end
