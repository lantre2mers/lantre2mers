class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates_presence_of :content, :rating
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
