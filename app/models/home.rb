class Home < ApplicationRecord
    belongs_to :home_type
    belongs_to :m_pref
    has_many :home_rules
    has_many :home_facilities
    has_many :rooms
    
end
