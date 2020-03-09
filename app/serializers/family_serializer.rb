class FamilySerializer < ActiveModel::Serializer
  attributes :id, :familyName, :parentOneName,
             :parentTwoName, :numberOfKids, :city, :state
end
