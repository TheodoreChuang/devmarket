class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :bids

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, uniqueness: true
  validates_length_of :password, in: 6..30, allow_blank: true
  validates :user_type, inclusion: {in: %w(client dev), message: "%{value} is required."}
  validates_length_of :name, in: 2..32, allow_blank: true
  validates_length_of :company_name, in: 2..32, allow_blank: true
  validates_length_of :bio, in: 10..500, allow_blank: true
  validates_length_of :city, in: 2..100, allow_blank: true
  validates_length_of :phone_number, in: 8..12, allow_blank: true

end
