class AddNotNullConstraintToColumnsInReviews < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reviews, :content, false
    change_column_null :reviews, :rating, false
  end
end
