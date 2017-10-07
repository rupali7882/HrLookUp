class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.integer :employee_id
      t.datetime :in_time
      t.datetime :out_time

      t.timestamps
    end
  end
end
