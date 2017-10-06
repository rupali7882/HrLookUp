class RemoveColumnEmployeeIdFromPayrolls < ActiveRecord::Migration[5.1]
  def up
    remove_column :payrolls, :employee_id, :integer
  end

  def down
    add_column :payrolls, :employee_id, :integer
  end
end
