class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|

      t.timestamps
      t.string :boat_name, null: false
      t.string :make
      t.string :model
      t.string :year
      t.string :loa, null: false
      t.string :rating_type
      t.integer :rating
    end
  end
end
