class TasksController < ApplicationController

  def index         # GET /Task
    @tasks = Task.all
  end

  def show          # GET /Task/:id
    @task = Task.find(params[:id])
  end

  def new           # GET /Task/new
    @tasks = Task.new
  end

  def create        # POST /Task

    @task = Task.new(params[:tasks])
    @task.save
    redirect_to tasks_path
  end

  def edit          # GET /Task/:id/edit
    @task = Task.find(params[:id])
  end

  def update        # PATCH /Task/:id

    @task = Task.find(params[:id])
    @task.update(params[:task])
    redirect_to tasks_path(@task)
    # Will raise ActiveModel::ForbiddenAttri
  end

  def destroy       # DELETE /Task/:id

    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

end
