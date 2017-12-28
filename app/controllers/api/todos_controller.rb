class Api::TodosController < ApplicationController
  
  def index
    @todos = Todo.where(user_id: params[:user_id])
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render :show
    else
      render json: @todo.errors.full_messages, status: 401
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy!
    render json: @todo
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo && @todo.update_attributes(todo_params)
      render "api/todos/show"
    elsif
      render json: ['Could not locate todo'], status: 400
    else
      render json: @todo.errors.full_messages, status: 401
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:task, :notes, :user_id, :tag, :etc, :workflow_pos, :time_slot)
  end
end
