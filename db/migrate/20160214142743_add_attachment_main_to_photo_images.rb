class AddAttachmentMainToPhotoImages < ActiveRecord::Migration
  def self.up
    change_table :photo_images do |t|
      t.attachment :main
    end
  end

  def self.down
    remove_attachment :photo_images, :main
  end
end
