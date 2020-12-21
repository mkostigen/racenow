class AddCostToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :cost, :decimal
  end
end
