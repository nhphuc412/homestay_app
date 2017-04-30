class CreateRoomTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :room_types do |t|
      t.string :room_type_name

      t.timestamps
    end
  end
end
