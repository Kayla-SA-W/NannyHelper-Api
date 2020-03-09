class RatingSerializer < ActiveModel::Serializer
  attributes :id, :happiness,
             :honesty, :reliability,
             :consistency, :respect, :benefits,
             :kids, :safetyAndComfort,
             :pay, :workAgain, :reputation, :url, :editable
  has_one :user
  has_one :family

  def editable
    scope == object.user
  end
end
