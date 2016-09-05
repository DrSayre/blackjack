class HandsController < ApplicationController
  def show
    game = Game.find_by(decks: params[:decks].to_i, dealer_hit_on_soft_17: params[:dealer_hit_on_soft_17].to_b)
    @hand = game.hands.where(player_value: params[:player_value].to_i, dealer_card: params[:dealer_card].to_i, hard: params[:hard].to_b, pair: params[:pair].to_b).first
  end
end
