class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.time :open_time
      t.time :close_time

      t.timestamps
    end
  end
end
