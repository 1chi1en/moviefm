class AssessmentsController < ApplicationController

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new
    if @assessment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def assess_params
    params.require(:assessment).permit(:impression, :rate, :goodthings, :badthings)
  end

end
