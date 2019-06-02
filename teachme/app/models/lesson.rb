class Lesson < ApplicationRecord
  belongs_to :user
  def lesson_duration 
    starting_time = Time.parse(start_time)
    ending_time = Time.parse(end_time)
    (ending_time - starting_time) / 60
  end 
end
