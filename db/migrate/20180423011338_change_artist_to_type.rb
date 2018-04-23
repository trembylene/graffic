class ChangeArtistToType < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :street_artist, :type
    change_column :users, :type, :string
  end
end
