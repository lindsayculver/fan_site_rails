class Gear < ActiveRecord::Base
  has_many :reviews
  validates :year, :presence => true
  validates :model, :presence => true
  validates :brand, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
end
