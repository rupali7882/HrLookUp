class Employee < ApplicationRecord
  #only use those validations in model which need to be check with database
  #validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at|midname|bloodtype|homenumber/i }
  validates :empid, :email, uniqueness: true
end
