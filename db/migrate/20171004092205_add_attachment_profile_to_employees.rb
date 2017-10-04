class AddAttachmentProfileToEmployees < ActiveRecord::Migration[5.1]
  def self.up
    change_table :employees do |t|
      t.attachment :profile
    end
  end

  def self.down
    remove_attachment :employees, :profile
  end
end
