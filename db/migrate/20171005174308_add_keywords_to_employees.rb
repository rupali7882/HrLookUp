class AddKeywordsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :keywords, :text
  end
end
