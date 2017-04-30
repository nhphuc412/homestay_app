class CreateHomeTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :home_types do |t|
      t.string :home_type_name, null: false
      t.string :image
      t.timestamps
    end
  end
end
