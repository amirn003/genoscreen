class Laboratory < ApplicationRecord
  has_many :analysis
  validates :name, uniqueness:  true
end
