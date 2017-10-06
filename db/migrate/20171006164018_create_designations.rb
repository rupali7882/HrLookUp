class CreateDesignations < ActiveRecord::Migration[5.1]
  def change
    create_table :designations do |t|
      t.string :title
      t.integer :salary

      t.timestamps
    end
  end
end
