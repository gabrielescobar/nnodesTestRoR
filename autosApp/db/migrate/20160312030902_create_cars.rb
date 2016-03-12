class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :marca
      t.string :modelo
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
