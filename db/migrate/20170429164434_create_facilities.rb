class CreateFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :facilities do |t|
      t.string :facility_name
      t.string :description

      t.timestamps
    end
  end
end
