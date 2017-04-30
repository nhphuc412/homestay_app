json.extract! room, :id, :room_type_id, :bed_type_id, :bath_type_id, :accommodates, :description, :image, :price, :room_name, :created_at, :updated_at
json.url room_url(room, format: :json)
