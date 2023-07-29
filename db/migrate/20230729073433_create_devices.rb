class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :device_name
      t.string :manufacturer
      t.string :operating_system
      t.string :minimum_os_version
      t.string :display_resolution
      t.integer :ram
      t.integer :storage

      t.timestamps
    end
  end
end
