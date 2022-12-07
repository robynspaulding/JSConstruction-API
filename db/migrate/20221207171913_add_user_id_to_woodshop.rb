class AddUserIdToWoodshop < ActiveRecord::Migration[7.0]
  def change
    add_column :woodshops, :user_id, :integer
  end
end
