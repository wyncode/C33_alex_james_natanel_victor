class User < ApplicationRecord
  has_secure_password

  has_many :lessons
  has_many :profiles, dependent: :destroy
  has_many :reviews

end
