class WorkoutsController < ApplicationController


  def index
    if user_signed_in?
      @work_outs_long = Workout.long
      @work_outs_short = Workout.short
    else     
      @work_out = []
    end
  end

  def new
   @work_out = Workout.new
 end




 def edit
  @work_out = Workout.find(params[:id])
end

def show
  @work_out = Workout.find(params[:id])
end

def update
  @work_out = Workout.find(params[:id])
  if @work_out.update_attributes(params[:workout])
    redirect_to workouts_path (@work_out.id)           
  else
    render 'edit'
  end
end

def destroy
  @work_out = Workout.find(params[:id])
  @work_out.destroy
  redirect_to workouts_path
end


def create
  @work_out = Workout.new(params[:workout])
  if(@work_out.user_id != current_user.id)
    redirect_to root_path
  else
    if @work_out.save
      Notifications.new_workout(@work_out).deliver
      redirect_to workouts_path
    else 
      render 'new'
    end
  end
end


end



