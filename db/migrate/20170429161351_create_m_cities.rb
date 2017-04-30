class CreateMCities < ActiveRecord::Migration[5.0]
  def change
    create_table :m_cities do |t|
      t.integer :pref_id
      t.string :city_name

      t.timestamps
    end
  end
end
