# frozen_string_literal: true

class DepartmentsController < ApplicationController
  def index
    @departments = Department.all.order(id: :desc).paginate(page: params[:page], per_page: 4)
  end

  def show
    @department = Department.find(params[:id])
    @employees  = @department.employees.paginate(page: params[:page], per_page: 4)
  end

  def new
    @department = Department.new
  end

  def edit
    @department = Department.find(params[:id])
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to @department
    else
      render 'new'
    end
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
      redirect_to @department
    else
      render 'edit'
    end
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy

    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
