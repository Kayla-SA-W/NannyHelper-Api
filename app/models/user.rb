# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication

  has_many :ratings, dependent: :destroy
  has_many :families, through: :ratings
end
