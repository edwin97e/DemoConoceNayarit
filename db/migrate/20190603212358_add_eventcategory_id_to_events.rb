class AddEventcategoryIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :eventcategory, foreign_key: true
  end
end
