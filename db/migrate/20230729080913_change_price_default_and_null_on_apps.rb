class ChangePriceDefaultAndNullOnApps < ActiveRecord::Migration[7.0]
  def change
    change_column :apps, :price, null: true
  end
end
