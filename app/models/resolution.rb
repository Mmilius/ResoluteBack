class Resolution < ApplicationRecord
  belongs_to :realm
  belongs_to :user
  has_many :reports, dependent: :destroy
end
