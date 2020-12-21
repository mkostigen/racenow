class AddNameToRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :registrations, :name, :string
  end
end
