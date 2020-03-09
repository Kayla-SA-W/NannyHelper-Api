class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :family

  include Filterable
end
