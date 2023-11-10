class LaboratoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_laboratory, only: [:show, :edit, :update, :destroy]


  def index
    @laboratories = Laboratory.all
  end

  def show

  end

  def new
    @laboratory = Laboratory.new
  end

  def create
    @laboratory = Laboratory.new(laboratories_params)

    if @laboratory.save
      redirect_to laboratory_path(@laboratory), notice: 'Created successfully!'
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @laboratory.update(laboratories_params)
      redirect_to laboratory_path(@laboratory), notice: 'Updated successfully!'
    else
      render :edit
    end
  end

  private
  def laboratories_params
    params.require(:laboratory).permit(:name, :location)
  end

  def set_laboratory
    @laboratory = Laboratory.find(params[:id])
  end
end
