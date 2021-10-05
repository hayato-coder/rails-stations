class Admin::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to action: "show"
    else
      flash[:danger] = "登録に失敗しました"
      render 'show'
    end
  end

  def destroy
    Schedule.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private
    def schedule_params
      params.require(:schedule).permit(:start_time, :end_time)
    end
end
