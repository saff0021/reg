class ChartController < ApplicationController
  def cview
    @teams = Team.all
  end

end
