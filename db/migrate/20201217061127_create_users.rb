class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.boolean :is_boat_owner?
    end
  end
end
