class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :image_url
      t.string :author
      t.string :genre_id
      t.timestamps
    end
  end
end
