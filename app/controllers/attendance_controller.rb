class AttendanceController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = current_user.attendances.build(attendance_params)
    if @attendance.save
      redirect_to(show_event_path, notice: 'You will attend this event')
    else 
      flash.now[:alert] = 'There was an error'
      render :new
    end
  end

  def destroy
    @attendance.destroy
  end

  private

  def attendance_params
    params.require(:attendance).permit(:id, :event_id, :user_id)
  end
end
