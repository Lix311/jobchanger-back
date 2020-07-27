class UserjobSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :job_id, :status, :contacts, :action, :notes, :next_step, :next_interview
end
