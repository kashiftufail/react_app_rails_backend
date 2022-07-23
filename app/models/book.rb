class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 , maximum: 20 }
  validates :description, presence: true, length: { minimum: 15 , maximum: 500 }
  belongs_to :category

end
