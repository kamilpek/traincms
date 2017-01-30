class CreateTagRefs < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_refs do |t|
      t.references :tag, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
