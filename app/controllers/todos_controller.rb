class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  def new
    @todo = Todo.new
  end
  def create
    @todo = Todo.new(post_params)
    @todo.save
    redirect_to todos_url
  end
  def Show
    @post = Todo.find(params[:id])

  end
  private

  def post_params
    params.require(:todo).permit(:description, :completed)
  end
end
