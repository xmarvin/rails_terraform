class TasksCountController < ApplicationController
  def new
  end

  def create
    tasks_count = params[:count].to_i
    QueueSizeMetric.new.put(tasks_count)
    redirect_to root_path, notice: "Set tasks count to: #{tasks_count}"
  end
end
