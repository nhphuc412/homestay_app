class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :home_name
      t.integer :home_type_id
      t.integer :m_pref_id
      t.string :description
      t.string :image
      t.string :address
      t.integer :status
      t.timestamps
    end
  end
end
