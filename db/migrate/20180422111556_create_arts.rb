class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.string :tags
      t.string :location
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true
      t.integer :artist_id
      t.integer :painted_over
      t.boolean :published

      t.timestamps
    end
  end
end
