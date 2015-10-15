class ChangeDefault < ActiveRecord::Migration
  def change
    change_column_default(:gears, :featured, :false)
  end
end
