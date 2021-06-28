class Artist < ApplicationRecord
  has_many : record, dependent: :destroy
  
  validates :name, presence: true
end
