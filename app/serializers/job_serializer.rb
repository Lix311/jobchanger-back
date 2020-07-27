class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :status, :contacts, :action, :title, :notes, :next_step, :logo, :next_interview
end
