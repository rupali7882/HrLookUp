class CreatePayrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :payrolls do |t|
      t.integer :min_salary
      t.integer :max_salary
      t.integer :emp_salary
      t.integer :tax
      t.integer :deduction
      t.string  :designation
      t.integer :employee_id

      t.timestamps
    end
  end
end
