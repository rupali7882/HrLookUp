class CreateTimesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :timesheets do |t|
      t.integer :employee_id
      t.string :name
      t.time :in
      t.time :out
      t.string :shift
      t.date :day
      t.string :holiday
      t.string :status
      t.string :shift_attendent


      t.timestamps
    end
  end
end
