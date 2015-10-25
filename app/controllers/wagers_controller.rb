class WagersController < ApplicationController

  def create

    @scenarios = Scenario.find(params[:scenario_id])

    @scenario.wagers << Wager.create(wager_params)

    # add to user too!

    render json: @event.scenarios
  end
end
