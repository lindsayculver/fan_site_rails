class CreateGear < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.column :year, :integer
      t.column :brand, :string
      t.column :model, :string
      t.column :description, :string

      t.timestamps
    end
  end
end
