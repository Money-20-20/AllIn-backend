module JSONHelper

  def inject_extra_scenario_props(scenario)
    scenario_json = JSON.parse(scenario.to_json)

    scenario_json["yes_votes"] = scenario.wagers.where(vote: true).count
    scenario_json["no_votes"] = scenario.wagers.where(vote: false).count
    scenario_json["wager_difference"] = scenario.wagers.where(vote: true).map(&:amount).reduce(:+) - scenario.wagers.where(vote: false).map(&:amount).reduce(:+)

    scenario_json
  end




end