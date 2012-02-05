class PickController < ApplicationController

  # GET pick/pview

  def pview
    @pitchers_undrafted = Pitcher.all :conditions => {:selected => false}
    @hitters_undrafted = Hitter.all :conditions => {:selected => false}   
    @new_draft_pick = Draft.new

    @drafts = Draft.all
    @hitters = Hitter.all
    @pitchers = Pitcher.all
    @teams = Team.all
    num_drafted_players = 0

  end
end
