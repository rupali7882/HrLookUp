class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :role

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/profile-default-male.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  def has_role name
  	(self.role.name=="HR") ? true : false
  end

end
