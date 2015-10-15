class AddimagetoGears < ActiveRecord::Migration
  def up
    add_attachment :gears, :image
  end

  def down
    remove_attachment :gears, :image
  end
end
