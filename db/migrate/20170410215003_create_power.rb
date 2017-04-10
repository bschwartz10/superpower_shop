class CreatePower < ActiveRecord::Migration[5.0]
  def change
    create_table :powers do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
