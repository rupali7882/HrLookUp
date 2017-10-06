class Employee < ApplicationRecord

  before_save :set_keywords

  belongs_to :designation

  validates :empid, :email, uniqueness: true
  has_attached_file :profile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile, content_type: /\Aimage\/.*\z/


  scope :search, ->(keywords){where('keywords LIKE ?', "%#{keywords.downcase}%") if keywords.present?}

	def fullname
		"#{self.title} #{self.firstname} #{self.midname} #{lastname}"
	end

  protected
    def set_keywords
      empi = empid.to_s
      self.keywords = [fullname, empi, city, gender, email, marital].map(&:downcase).join(' ')
    end

end
