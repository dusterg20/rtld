class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :key_id
      t.string :description

      t.timestamps
    end
  end
end
