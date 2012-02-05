from pview:

      <p>team.hitter[0].name = <%=team.hitter[0].name%></p>

      <%=@teams[0].pitchers << Pitcher.find(5)%>
      <p>@teams[0].pitchers[0].name = <%= @teams[0].pitchers[0].name %></p>

from pick_controller:
    t_id = 4
    team = Team.find(6)
    team.hitter[0] = Hitter.find(15)

      <%= render :partial => "drafts/form", :locals => { :team => @team } %>

    if :player_type == "Hitter" && :player_num.between?(1, 288)
      @team.num_players += 1
      @team.spent += @hitters[params[:id]].cost
    elsif :player_type == "Pitcher" && :player_num.between?(1, 363)
      @team.num_players += 1
      @team.spent += @pitchers[params[:id]].cost
    else
      puts "Bad input. Please try again."
    end
