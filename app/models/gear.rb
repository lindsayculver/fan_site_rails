class Gear < ActiveRecord::Base
  has_many :reviews

  default_scope { order('model ASC')}

  validates :year, :presence => true
  validates :model, :presence => true
  validates :brand, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true

    def self.search(search)
    # where(:title, query) -> This would return an exact match of the query
    where("model like ?", "%#{search}%")
  end

end
