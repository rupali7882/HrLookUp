class CreateEntitlements < ActiveRecord::Migration[5.1]
  def change
    create_table :entitlements do |t|
      t.string :name
      t.string :total_leave

      t.timestamps
    end
  end
end
