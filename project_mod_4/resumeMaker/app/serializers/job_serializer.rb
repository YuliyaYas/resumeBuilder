class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :employer, :location, :start_date, :end_date, :description
  has_one :resume
end
