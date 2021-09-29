class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.string :image_url
      t.integer :is_showing
      t.timestamps
    end
  end
end
