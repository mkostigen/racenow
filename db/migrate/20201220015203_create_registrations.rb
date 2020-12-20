class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.timestamps
      t.references :user, foreign_key: true, index: true
      t.references :race, foreign_key: true
      t.integer :number_of_crew
      t.string :crew
      t.float :cost
      t.string :payment_method
      t.string :payed?
      t.string :payment_auth
    end
  end
end
