class RanksController < ApplicationController

  def index
    @rank = Rank.all
  end

end
