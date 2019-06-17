class CreateEventcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :eventcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
