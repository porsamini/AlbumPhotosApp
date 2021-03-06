class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string   :filename,     :null => false
      t.string   :content_type
      t.integer  :size
      t.integer  :width
      t.integer  :height
      t.integer  :parent_id
      t.integer  :album_id#,     :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
