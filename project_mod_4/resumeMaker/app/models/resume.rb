class Resume < ApplicationRecord
  belongs_to :template
  has_many :jobs, dependent: :destroy
  has_many :educations, dependent: :destroy


end
