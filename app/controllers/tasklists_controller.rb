class TasklistsController < ApplicationController
 def index
   @task_lists = Tasklist.all
  end

  def new
   @task_list = Tasklist.new
  end

  def create
   @task_list = Tasklist.new(params[:tasklist])
   if @task_list.save
   redirect_to tasklists_path
   else
   render 'new'
   end
  end

  def destroy
@user = Tasklist.find(params[:id])
@user.destroy
redirect_to users_path
end


  def show
  end

  def edit
  end
end
