class User < ActiveRecord::Base
  has_many :authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :lockable, :timeoutable


  has_many :pins, dependent: :destroy

  validates :name, presence: true
end
