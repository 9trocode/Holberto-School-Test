class Categories < ApplicationRecord
  before_save do
    self.ref = 'bookStore_' + SecureRandom.alphanumeric if ref.nil?
  end
  validates :name,
            presence: true,
            uniqueness: {message: 'already exists'}
  validates :description,
            presence: true
  validates :ref,
            uniqueness: {message: 'already exists'}

end
