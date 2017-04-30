class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_type_id
      t.integer :bed_type_id
      t.integer :bath_type_id
      t.integer :accommodates
      t.string :description
      t.string :image
      t.integer :price
      t.string :room_name

      t.timestamps
    end
  end
end
