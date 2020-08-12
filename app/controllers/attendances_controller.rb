class AttendancesController < ApplicationController
  helper_method :current_user
  def new
    @attendance = Attendance.new
    render :new_attendences
  end

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      flash.now[:notice] = 'Attendance was successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'There was an error'
      # render :new
    end
  end

  def destroy
    @attendance.destroy
  end

  private

  def attendance_params
    params.require(:attendance).permit(:attended_event_id, :attendee_id)
  end
end
