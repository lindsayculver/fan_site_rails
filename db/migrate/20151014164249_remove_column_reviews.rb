class RemoveColumnReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :category_id, :integer
  end
end
