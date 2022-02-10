class AssessmentsController < ApplicationController

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(a_params)
    if @assessment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def a_params
    params.require(:assessment).permit(:impression, :rate, :goodthings, :badthings).merge(user_id: current_user.id)
  end
  
end
