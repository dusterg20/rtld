class RemoveXyKeyFromTagXy < ActiveRecord::Migration
  def change
    remove_column :tag_xies, :xy_key, :string
  end
end
