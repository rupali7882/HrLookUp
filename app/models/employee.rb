class Employee < ApplicationRecord

  #only use those validations in model which need to be check with database
  #validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at|midname|bloodtype|homenumber/i }
  validates :empid, :email, uniqueness: true
  has_attached_file :profile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile, content_type: /\Aimage\/.*\z/

	def fullname
		"#{self.title} #{self.firstname} #{self.midname} #{lastname}"
	end

end
