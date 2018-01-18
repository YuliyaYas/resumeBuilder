class EducationSerializer < ActiveModel::Serializer
  attributes :id, :school, :location, :degree, :major, :year, :resume_id
  # belongs_to :resume
end
