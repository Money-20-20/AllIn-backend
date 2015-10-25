class ScenariosController < ApplicationController
  include BlockchainHelper
  include JSONHelper

  def index
    p params

    @scenarios = Scenario.where(event_id: params[:event_id])

    render json: @scenarios
  end
  
  def show
    @scenario = Scenario.find(params[:id])
  
    scenario_json = inject_extra_props(@scenario)

    render json: @scenario
  end

  
  def create
    @event = Event.find(params[:event_id])

    @event.scenarios << Scenario.create(scenario_params)

    # add to user too!

    render json: @event.scenarios
  end

  def destroy
    @scenario = Scenario.find(params[:id])
    if params[:winner] == "yes"
      BlockchainHelper::send(@scenario.wagers.where(vote: true))
    elsif params[:winner] == "no"
      BlockchainHelper::send(@scenario.wagers.where(vote: false))
    end
    @scenario.destroy
  end

end
