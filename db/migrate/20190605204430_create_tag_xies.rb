class CreateTagXies < ActiveRecord::Migration
  def change
    create_table :tag_xies do |t|
      t.string :xy_key
      t.string :xy_timestamp
      t.string :xy_x
      t.string :xy_y
      t.string :xy_tagid

      t.timestamps
    end
  end
end
