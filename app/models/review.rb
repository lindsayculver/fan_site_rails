class Review < ActiveRecord::Base
  belongs_to :gear
  validates :title, :presence => true
  validates :content, :presence => true
  validates :author, :presence => true
  validates :rating, :presence => true
end
