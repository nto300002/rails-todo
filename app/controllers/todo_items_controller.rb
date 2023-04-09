class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all
    @new_todo_item = TodoItem.new
  end

  def create
    TodoItem.create(todo_item_params)
    redirect_to root_path
  end

  def edit
    @todo_item = TodoItem.find(params[:id])
  end

  def complete
    todo_item = TodoItem.find(params[:id])
    todo_item.update(completed: !todo_item.completed)
    redirect_to root_path
  end

  def update
    todo_item = TodoItem.find(params[:id])
    if todo_item.update(todo_item_params)
      redirect_to root_path
    end
  end

  def destroy
    @todo_item = TodoItem.find(params[:id])
    @todo_item.destroy
    redirect_to root_path
  end

  def show
    @todo_item = TodoItem.find(params[:id])
  end

  private

  def todo_item_params
    params.require(:todo_item).permit(:title, :description, :completed)
  end
end
