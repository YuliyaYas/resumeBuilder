class EducationSerializer < ActiveModel::Serializer
  attributes :id, :school, :location, :degree, :major, :graduation_year, :resume_id
  # belongs_to :resume
end
