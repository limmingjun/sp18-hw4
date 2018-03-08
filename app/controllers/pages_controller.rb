class PagesController < ApplicationController
  def new
    @cats = Cat.all
    @users = User.all
    @todos = Todo.all
  end

  def create
    @todo = Todo.new
  end

  def creator
    @todo = Todo.create(todo_params)
    redirect_to list_path
  end

  def list
    @todos = Todo.all
  end

  def todo_params
    params.require(:todo).permit(:todo, :done)
  end
end
