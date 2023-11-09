class LaboratoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @laboratories = Laboratory.all
  end

  def new
    @laboratory = Laboratory.new
  end

  def create
    @laboratory = Laboratory.new(laboratory_params)

    if @laboratory.save
      redirect_to @laboratory, notice: 'Created successfully!'
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  private
  def laboratory_params
    params.require(:laboratory).permit(:name, :location)
  end
end
