class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name, :last_name, :location, :phone, :email, :website, :skills, :summary
  has_one :template
end
