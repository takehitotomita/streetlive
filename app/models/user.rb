class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :band, dependent: :destroy
  accepts_nested_attributes_for :band

  
  
  # before_create :build_default_band
  # private
  # def build_default_band
	 #     build_band
	 #   true
  # end
end
