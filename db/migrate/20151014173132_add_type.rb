class AddType < ActiveRecord::Migration
  def change
    add_column :gears, :type, :string
  end
end
