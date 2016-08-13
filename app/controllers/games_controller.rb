class GamesController < ApplicationController

  def index
    @all_games = Game.all.order('score DESC')
    @last_game = Game.last
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params.require(:game).permit(:nickname, :q1_points, :q2_points, :q3_points, :q4_points, :q5_points))
    @game[:score] = @game[:q1_points] + @game[:q2_points] + @game[:q3_points] + @game[:q4_points] + @game[:q5_points]
    @game.save!
    redirect_to games_path(@game)
  end

end
