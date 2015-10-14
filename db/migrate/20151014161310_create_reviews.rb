class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :title, :string
      t.column :content, :string
      t.column :author, :string
      t.column :rating, :integer
      t.column :category_id, :integer

      t.timestamps
    end
  end
end
