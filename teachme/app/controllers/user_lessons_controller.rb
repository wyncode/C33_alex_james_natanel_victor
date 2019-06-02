class UserLessonsController < ApplicationController 

  def create 
    user = User.find(session[:user_id])
    lesson = Lesson.find(params[:lesson_id])
    user_lessons = user.lessons
    user_lessons.push(lesson)
    user.save
    redirect_to user_path(user)
  end 
end 