class TasksController < ApplicationController
  def new
  end
   def edit
@user = Tasks.find(params[:id])
end


  def show
@user = Tasks.find(params[:id])
end

  def index
  end
end

def update
@user = Tasks.find(params[:id])
if @Tasks.update_attributes(params[:tasks])
redirect_to Tasks_path(@user.id)
else
render 'edit'
end
end



def destroy
@user = Tasks.find(params[:id])
@user.destroy
redirect_to tasks_path
end

