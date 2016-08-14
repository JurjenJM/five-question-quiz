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
    @game[:score] = calculate_score(@game[:q1_points], @game[:q2_points], @game[:q3_points], @game[:q4_points], @game[:q5_points])
    @game.save!
    redirect_to games_path(@game)
  end

  private

  def calculate_score(q1, q2, q3, q4, q5)
    score = 0

    if q1 != nil then score += q1 end
    if q2 != nil then score += q2 end
    if q3 != nil then score += q3 end
    if q4 != nil then score += q4 end
    if q5 != nil then score += q5 end

    return score
  end

end
