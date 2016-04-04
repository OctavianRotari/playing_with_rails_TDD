class TodosController < ApplicationController

  before_filter :authenticate

  def index
    @todos = Todo.where(email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.email = current_email
    if(@todo.save)
      redirect_to todos_path
    else
      redirect_to new_todo_path
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end
