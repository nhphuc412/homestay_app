class HomeRule < ApplicationRecord
    belongs_to :rule
    belongs_to :home
end
