class Employee < ApplicationRecord

  #only use those validations in model which need to be check with database
  #validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at|midname|bloodtype|homenumber/i }
  validates :empid, :email, uniqueness: true
  has_attached_file :profile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/profile-default-male.png"
  validates_attachment_content_type :profile, content_type: /\Aimage\/.*\z/

  has_many :timesheets
	def fullname
		"#{self.title} #{self.firstname} #{self.midname} #{lastname}"
	end

  before_save :set_keywords

  scope :search, ->(keywords){where('keywords LIKE ?', "%#{keywords.downcase}%") if keywords.present?}


  protected
  
    def set_keywords
      empi = empid.to_s
      self.keywords = [fullname, empi, city,  email, marital].map(&:downcase).join(' ')
    end

end
