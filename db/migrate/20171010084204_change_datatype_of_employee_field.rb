class ChangeDatatypeOfEmployeeField < ActiveRecord::Migration[5.1]
 def change
    change_column :employees, :homenumber, :string
    change_column :employees, :mobile, :string
    change_column :employees, :gender, :boolean
  end
end
