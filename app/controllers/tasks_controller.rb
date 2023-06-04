class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new

  end

  def create
    Task.create(title:params[:title])
    redirect_to "/tasks"
    # render plain: "タスク追加" これ表示されない

  end

  def edit
    @task = Task.find(params[:id])
    # binding.pry
  end

  def update
    # binding.pry
    @task = Task.find(params[:id])

    # binding.pry
    # 上記のbindin.pryは機能しない。updateメソッドに@taskが渡っていないので上記のbinding.pryまでいかないかと。

    @task.update(title:params[:title])
    redirect_to "/tasks"

    # if @task.update(task_params)
    #   redirect_to "/tasks"
    # else
    #   render :edit
    # end

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/tasks"
  end


# private
#   def task_params
#     params.require(:task).permit(:title)
#   end



end
