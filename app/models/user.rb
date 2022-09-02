class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # user = User.create(first_name: "george", last-name: "Abitbol").full_name
  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
