class AnalysisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_analysis, only: [:show, :edit, :update, :destroy]

  def index
    @analysis = Analysis.all
  end

  def new
    @analysis = Analysis.new
  end

  def create
    @analysis = Analysis.new(analysis_params)
    if @analysis.save
      redirect_to @analysis, notice: 'Created successfully!'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @analysis.update(analysis_params)
      redirect_to analysis_path(@analysis), notice: 'Updated successfully!', status: :see_other
    else
      render :edit
    end
  end

  def destroy
    @analysis.destroy
    redirect_to analysis_index_url, notice: 'Analysis was successfully destroyed!', status: :see_other
  end


  private

  def set_analysis
    @analysis = Analysis.find(params[:id])
  end

  def analysis_params
    params.require(:analysis).permit(:id, :name, :type, :sample, :user_id, :laboratory_id)
  end

end
