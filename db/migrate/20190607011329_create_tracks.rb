class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.timestamp :xytimestamp
      t.string :xyx
      t.string :xyy
      t.string :xytagid

      t.timestamps
    end
  end
end
