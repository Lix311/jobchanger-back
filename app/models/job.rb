class Job < ApplicationRecord
    has_many :userjobs
    has_many :users, through: :userjobs
end
