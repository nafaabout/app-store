class CreateAppDownloads < ActiveRecord::Migration[7.0]
  def change
    create_table :app_downloads do |t|
      t.belongs_to :app, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :download_date
      t.belongs_to :device, null: false, foreign_key: true

      t.timestamps
    end
  end
end
