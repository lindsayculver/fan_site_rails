class AddColumnToGear < ActiveRecord::Migration
  def change
    add_column :gears, :review_id, :integer
  end
end
