class TeacherPagesController < ApplicationController
  layout 'teacher'
  def Home
  end

  def Create
      @user = User.new
  end

  def StudentList
  end

  def StudentInfo
  end




end
