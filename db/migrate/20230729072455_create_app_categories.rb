class CreateAppCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :app_categories do |t|
      t.belongs_to :app, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
