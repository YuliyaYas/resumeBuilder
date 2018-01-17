class EducationSerializer < ActiveModel::Serializer
  attributes :id, :school, :location, :degree, :major, :year
  has_one :resume
end
