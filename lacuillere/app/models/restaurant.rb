class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address
  validates :name, :adress, uniqueness: true
end
