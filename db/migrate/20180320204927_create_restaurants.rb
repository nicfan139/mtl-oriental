class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :district

      t.timestamps
    end
  end
end
