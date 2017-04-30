class CreateBedTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :bed_types do |t|
      t.string :bed_type_name

      t.timestamps
    end
  end
end
