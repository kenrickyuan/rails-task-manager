class TasksController < ApplicationController
  before_action :find_task, only: [:find, :edit, :update, :destroy]

  def list
    @tasks = Task.all
    # raise
  end

  def find
    @task.completed ? @task_phrase = "completed" : @task_phrase = "not completed yet"
    # raise
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require("task").permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params["id"].to_i)
  end
end
