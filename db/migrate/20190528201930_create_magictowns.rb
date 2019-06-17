class CreateMagictowns < ActiveRecord::Migration[5.2]
  def change
    create_table :magictowns do |t|
      t.string :title
      t.text :body
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
