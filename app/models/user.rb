class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments

  validates :family_name, presence: true, length: { maximum: 20 }
    validates :given_name,  presence: true, length: { maximum: 20 }
    validates :image_url,   presence: true, length: { maximum: 200 }

  def full_name
      family_name + given_name
    end
end
