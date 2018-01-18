class Resume < ApplicationRecord
  belongs_to :template
  has_many :jobs
  has_many :educations

end
