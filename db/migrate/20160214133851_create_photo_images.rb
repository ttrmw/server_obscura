class CreatePhotoImages < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_images do |t|
      t.text :metadata

      t.timestamps
    end
  end
end
