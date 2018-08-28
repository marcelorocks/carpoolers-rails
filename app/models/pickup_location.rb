# frozen_string_literal: true

class PickupLocation < ApplicationRecord
  belongs_to :carpool
  geocoded_by :location
  after_validation :geocode
end