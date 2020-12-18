class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|

      t.timestamps
      t.string :name, null: false
      t.date :date, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :type, null: false
    end
  end
end
