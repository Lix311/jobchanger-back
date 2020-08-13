class Userjob < ApplicationRecord
    belongs_to :user, required: false 
    belongs_to :static_job, required: false 
end
