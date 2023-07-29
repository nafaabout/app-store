class RenameContentToCommentOnReviews < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :content, :comment
    change_column, :reviews, null: false, default: ''
  end
end
