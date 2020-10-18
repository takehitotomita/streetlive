class AddDeletedAtToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :deleted_at, :datetime
    add_index :musics, :deleted_at
  end
end
