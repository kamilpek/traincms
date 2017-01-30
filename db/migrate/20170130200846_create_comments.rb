class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :article, foreign_key: true
      t.text :author
      t.text :content
      t.text :email
      t.text :ip

      t.timestamps
    end
  end
end
