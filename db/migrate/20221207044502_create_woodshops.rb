class CreateWoodshops < ActiveRecord::Migration[7.0]
  def change
    create_table :woodshops do |t|
      t.string :item
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
