class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :alias, :string
    add_column :users, :avatar, :string
    add_column :users, :info, :text
    add_column :users, :street_artist, :boolean
    add_column :users, :admin, :boolean
  end
end
