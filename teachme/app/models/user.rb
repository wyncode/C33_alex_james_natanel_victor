class User < ApplicationRecord
  has_many :lessons
  has_many :profiles, dependent: :destroy
  has_many :reviews
end
