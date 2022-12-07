class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :job_name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
