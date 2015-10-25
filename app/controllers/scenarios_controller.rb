class ScenariosController < ApplicationController
  include BlockchainHelper

  def index
    p params

    @scenarios = Scenario.where(event_id: params[:event_id])

    render json: @scenarios
  end
  
  def show
    @scenario = Scenario.find(params[:id])
  end
  
  def create
    @event = Event.find(params[:event_id])

    @event.scenarios << Scenario.create(scenario_params)

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
end
