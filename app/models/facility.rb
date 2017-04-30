class Facility < ApplicationRecord
    has_many :home_facilities
    has_many :room_facilities
end
