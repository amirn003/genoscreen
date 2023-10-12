class Analysis < ApplicationRecord
  belongs_to :user
  belongs_to :laboratory
  has_many :variants
end
