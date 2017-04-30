class Room < ApplicationRecord
    belongs_to :room_type
    belongs_to :home
    belongs_to :bed_type
    belongs_to :bath_type
    has_many :room_facilities
end
