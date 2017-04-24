class Wake < ApplicationRecord
  validates :hours, :minutes, presence: true
end
