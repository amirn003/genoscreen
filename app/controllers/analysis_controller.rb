class AnalysisController < ApplicationController
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
    @analyse = Analysis.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def analysis_params
    params.require(:analysis).permit(:id, :name, :type, :sample, :user_id, :laboratory_id)
  end

end
