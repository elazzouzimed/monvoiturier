class AddCarsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :car, null: false, foreign_key: true
  end
end
