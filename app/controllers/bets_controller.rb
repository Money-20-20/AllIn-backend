class BetsController < ApplicationController

  def end
    Bet.find(params[:id])
  end

end
