class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      puts "it works!!!!!"
    else
      puts "it didnt work!!!"
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:content, :completed)
  end

end
