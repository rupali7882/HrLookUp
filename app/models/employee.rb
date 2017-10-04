class Employee < ApplicationRecord

	def fullname
		"#{self.title} #{self.firstname} #{self.midname} #{lastname}"
	end
end
