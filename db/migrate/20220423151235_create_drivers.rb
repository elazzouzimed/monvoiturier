class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :full_name
      t.integer :rating
      t.string :comment
      t.string :picture

      t.timestamps
    end
  end
end
