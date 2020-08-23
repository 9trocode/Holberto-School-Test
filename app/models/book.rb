class Book < ApplicationRecord
  belongs_to :categories, required: false
  belongs_to :library_location, required: false
end
