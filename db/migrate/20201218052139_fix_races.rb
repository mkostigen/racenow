class FixRaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :races, :type, :data_type, {}
    add_column :races, :race_type

  end
end
