class CreateFeaturedBooleanGear < ActiveRecord::Migration
  def change
    add_column :gears, :featured, :boolean
  end
end
