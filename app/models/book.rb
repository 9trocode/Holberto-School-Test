class Book < ApplicationRecord
  belongs_to :categories, required: false
  belongs_to :libary_locations, required: false
end
