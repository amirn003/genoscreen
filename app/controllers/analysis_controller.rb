class AnalysisController < ApplicationController
  def index
    @analysis = Analysis.all
  end

  def new
  end

  def create
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
end
