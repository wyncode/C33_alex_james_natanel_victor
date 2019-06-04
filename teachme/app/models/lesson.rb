class Lesson < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :users
  has_many :reviews

  def lesson_duration
    starting_time = Time.parse(start_time)
    ending_time = Time.parse(end_time)
    (ending_time - starting_time) / 60
  end
end
