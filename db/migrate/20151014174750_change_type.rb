class ChangeType < ActiveRecord::Migration
  def change
    remove_column :gears, :type, :string
    add_column :gears, :category, :string
  end
end
