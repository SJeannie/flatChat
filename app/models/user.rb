class User < ApplicationRecord

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


def name
  email.split('@')[0]
end

end
