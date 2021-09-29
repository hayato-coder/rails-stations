class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.integer :year
      t.text :description
      t.string :image_url
      t.boolean :is_showing, null: false
      t.timestamps
    end
  end
end
