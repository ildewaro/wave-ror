class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.belongs_to :feature, foreign_key: true
      t.timestamps
    end
  end
end
