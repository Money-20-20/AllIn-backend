# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "xander", password: "password", wallet_id: "194Sh984FrK19wHBdoAV1iBrKvGepDBTXN")
User.create(username: "gabriel", password: "password", wallet_id: "41bec886-acc2-416f-8fc1-d5a36e0ac1fd")
User.create(username: "anne", password: "A07579805 ", wallet_id: "5e58e789-1e82-49e2-bf4c-8fa1cb450921")


hackathon = Event.create(name: "Hackathon Money2020", latitude: 36.1221311, longitude: -115.1671175, description: "Money2020 Winner")
Event.create(name: "NBA Opening Day", description: "Will the Dubs win?")
Event.create(name: "World Series", description: "Who will win the world series?")
Event.create(name: "Democratic National Debate", description: "Who will be favored by the people?")


allin = Scenario.create(question: "Team 'All-In' will win it all", user_id: 1)
fitbit = Scenario.create(question: "A team with a fitbit app win the Vantiv API challenge", user_id: 1)
canada = Scenario.create(question: "The winning team will be from Canada", user_id: 1)
paypal = Scenario.create(question: "Paypal will have the most entries", user_id: 1)
drone = Scenario.create(question: "Someone will be flying a drone during the demos", user_id: 3)
overtime = Scenario.create(question: "At least 5 teams will go over time", user_id: 2)

hackathon.scenarios.push(allin)
hackathon.scenarios.push(fitbit)
hackathon.scenarios.push(canada)
hackathon.scenarios.push(paypal)
hackathon.scenarios.push(drone)
hackathon.scenarios.push(overtime)

allin.wagers.push(Wager.create(user_id: 3, vote: true, amount: 5000))
allin.wagers.push(Wager.create(user_id: 1, vote: true, amount: 5000))
allin.wagers.push(Wager.create(user_id: 2, vote: true, amount: 5000))
allin.wagers.push(Wager.create(user_id: 3, vote: false, amount: 10000))
allin.wagers.push(Wager.create(user_id: 1, vote: false, amount: 5000))

fitbit.wagers.push(Wager.create(user_id: 1, vote: false, amount: 20000))
fitbit.wagers.push(Wager.create(user_id: 2, vote: true, amount: 5000))
fitbit.wagers.push(Wager.create(user_id: 3, vote: true, amount: 5000))
fitbit.wagers.push(Wager.create(user_id: 3, vote: true, amount: 5000))
fitbit.wagers.push(Wager.create(user_id: 2, vote: true, amount: 5000))

canada.wagers.push(Wager.create(user_id: 1, vote: true, amount: 4000))
canada.wagers.push(Wager.create(user_id: 2, vote: true, amount: 6000))
canada.wagers.push(Wager.create(user_id: 3, vote: false, amount: 7500))
canada.wagers.push(Wager.create(user_id: 2, vote: false, amount: 2500))

paypal.wagers.push(Wager.create(user_id: 2, vote: false, amount: 1500))
paypal.wagers.push(Wager.create(user_id: 3, vote: false, amount: 2500))
paypal.wagers.push(Wager.create(user_id: 2, vote: true, amount: 3000))
paypal.wagers.push(Wager.create(user_id: 1, vote: true, amount: 1000))

drone.wagers.push(Wager.create(user_id: 2, vote: true, amount: 25000))
drone.wagers.push(Wager.create(user_id: 1, vote: true, amount: 25000))
drone.wagers.push(Wager.create(user_id: 1, vote: false, amount: 10000))
drone.wagers.push(Wager.create(user_id: 3, vote: false, amount: 10000))
drone.wagers.push(Wager.create(user_id: 2, vote: false, amount: 30000))

overtime.wagers.push(Wager.create(user_id: 3, vote: false, amount: 500))
overtime.wagers.push(Wager.create(user_id: 2, vote: false, amount: 700))
overtime.wagers.push(Wager.create(user_id: 2, vote: true, amount: 800))
overtime.wagers.push(Wager.create(user_id: 1, vote: true, amount: 400))
