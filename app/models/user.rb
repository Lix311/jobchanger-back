class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :userjobs 
    has_many :static_jobs, through: :userjobs
end
