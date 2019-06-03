class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end

  lesson = Lesson.find(params[:lesson_id])
  user_lessons = user.lessons
  user_lessons.push(lesson)
  user.save
  redirect_to user_path(user)
  # POST /lessons
  def create
    user = User.find(params[:user_id])
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /lessons/1
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /lessons/1
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
    end
  end

  def book_lesson
    @user = current_user
    lesson = Lesson.find(params[:lesson_id])
    @user.lessons << lesson
    redirect_to @user
  end

  private    user = User.find(session[:user_id])

    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:description, :start_time, :end_time, :location, :attendees_number, :duration, :student_requirements, :supplied_by_teacher, :comments)
    end
end
