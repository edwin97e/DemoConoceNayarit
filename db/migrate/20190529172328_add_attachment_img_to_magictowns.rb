class AddAttachmentImgToMagictowns < ActiveRecord::Migration[5.2]
  def self.up
    change_table :magictowns do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :magictowns, :img
  end
end
