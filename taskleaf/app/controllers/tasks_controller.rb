class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    redirect_to tasks_path, notice: "タスク「#{task.name}」を変更しました"
  end
  

  def create
    task = Task.new(task_params)
    task.save!
    redirect_to tasks_path, notice: "タスク「#{task.name}」を登録しました"

    # @task = Task.new(task_params)
    # if @task.save
    #   flash[:success] = "登録しました"
    #   redirect_to @task
    # else
    #   flash[:error] = "登録できませんでした"
    #   render 'new'
    # end
  
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_url , notice: "タスク「#{task.name}」を削除しました"
  end
  

  private 

  def task_params
    params.require(:task).permit(:name, :description)
  end
  
end
