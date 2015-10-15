class CreateColumnRemoveColumn < ActiveRecord::Migration
  def change
    add_column :reviews, :gear_id, :integer
    remove_column :gears, :review_id
  end
end
