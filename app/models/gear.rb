class Gear < ActiveRecord::Base
  has_many :reviews
  has_attached_file :image, styles: { large: "800x800", medium: "300x300>", thumb: "150x150>" }, default_url: "/system/gears/images/missing.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  default_scope { order('brand ASC')}

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
