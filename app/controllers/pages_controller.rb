class PagesController < ApplicationController

  def home
    @game = Game.new
  end

  def create
    @game = Game.new(params.require(:game).permit(:nickname))
    @game.save!
    redirect_to questions_one_path
  end

end
