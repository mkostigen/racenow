class AddDescToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :description, :string
  end
end
