class StaticJob < ApplicationRecord
    has_many :users, through: :userjobs
    has_many :userjobs

end
