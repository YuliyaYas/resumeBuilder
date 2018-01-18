class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :employer, :location, :start_date, :end_date, :description, :resume_id
  # belongs_to :resume
end
