class WagersController < ApplicationController
  include BlockchainHelper

  def create

    p "We hit!!"
    p params
    new_params = params.keys[0]
    new_params = JSON.parse(new_params)

    @scenario = Scenario.find(new_params["scenario_id"])

    new_wager = Wager.create!(amount: new_params["amount"], scenario_id: new_params["scenario_id"], user_id: 3, vote: true);


    @scenario.wagers << new_wager

    BlockchainHelper::charge(new_wager)

    # add to user too!

    render json: "Success"
  end
end
