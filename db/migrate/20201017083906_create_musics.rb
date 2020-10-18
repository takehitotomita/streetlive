class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :file
      t.string :name, null: false
      t.string :img_id
      t.text :introduction, null: false
      t.integer :band_id, null: false
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
