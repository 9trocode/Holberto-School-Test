# frozen_string_literal: true

class LibaryLocations < ApplicationRecord
  before_save do
    self.ref = 'bookLib_' + SecureRandom.alphanumeric if ref.nil?
  end
  validates :name,
            presence: true,
            uniqueness: { message: 'already exists' }
  validates :location_desc,
            presence: true
  validates :ref,
            uniqueness: { message: 'already exists' }
end
