class Family < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ratings, dependent: :destroy
  has_many :users, through: :ratings

end
