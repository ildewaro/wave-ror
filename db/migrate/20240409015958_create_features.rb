class CreateFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :features do |t|
      t.string :external_id
      t.decimal :magnitude, precision: 10, scale: 2
      t.string :place
      t.string :time
      t.boolean :tsunami
      t.string :mag_type
      t.string :title
      t.decimal :longitude, precision: 10, scale: 2
      t.decimal :latitude, precision: 10, scale: 2
      t.timestamps
    end
  end
end
