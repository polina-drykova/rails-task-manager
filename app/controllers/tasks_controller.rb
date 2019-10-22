class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # GET /tasks:
  def index
    @tasks = Task.all
  end

  # GET /tasks/id :
  def show
  end

  # GET /tasks/new :
  def new
    @task = Task.new
  end

  # POST /tasks :
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # GET /tasks/:id/edit :
  def edit
  end

  # PATCH /tasks/:id :
  def update
    @task.update(task_params)
    redirect_to task_path
  end

  # DELETE /tasks/:id :
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
