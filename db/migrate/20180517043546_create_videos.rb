class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :genre
      t.string :colour

      t.timestamps
    end
  end
end
