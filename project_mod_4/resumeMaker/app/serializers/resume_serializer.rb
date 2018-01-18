class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name, :last_name, :location, :phone, :email, :website, :skills, :summary, :template_id
  # has_one :template
  has_many :jobs
end
