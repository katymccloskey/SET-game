class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: { message: "add a username! "}
  validates :email, presence: { message: "add a email! "}

  has_many :games, dependent: :destroy
end
