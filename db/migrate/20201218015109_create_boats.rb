
class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.timestamps
      t.timestamps
      t.string :name, null: false
      t.string :manufacturer
      t.string :model
      t.string :year
      t.string :loa
      t.string :color
      t.references :user, foreign_key: { on_delete: :cascade }, null: false
    end
  end
end
