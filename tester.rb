require 'rubygems' if RUBY_VERSION < '1.9'
require 'rest_client'


wallet = "8316b206-1abc-4faa-8de8-6226b3ca3d10"
password = "Cicadas2015"
recipient_address = recipient_address







url = "https://blockchain.info/merchant/" + wallet + "/payment?" + "password=" + password + "&address=" + recipient_address +"&amount=" + amount (in satoshi) + "&from=" + sender_address + "1JzSZFs2DQke2B3S4pBxaNaMzzVZaG4Cqh" + "&fee=10000" + "&note=" + personal_note








response = RestClient.get 'https://blockchain.info/merchant/8316b206-1abc-4faa-8de8-6226b3ca3d10/payment?password=Cicadas2015&address=18NGLaZwk4TyzSxNLsWuoWsChwpXv4Ji47&amount=200000&from=1FeUWyhBvfjGyN4Ku4pUYSTQNw8vfRyWru&fee=10000&note=HiXandorrrr'


puts response

response = RestClient.get 'https://blockchain.info/merchant/8316b206-1abc-4faa-8de8-6226b3ca3d10/payment?password=Cicadas2015&address=194Sh984FrK19wHBdoAV1iBrKvGepDBTXN&amount=200000&from=1FeUWyhBvfjGyN4Ku4pUYSTQNw8vfRyWru&fee=10000&note=HiXandorrrr'


puts response

response = RestClient.get 'https://blockchain.info/merchant/8316b206-1abc-4faa-8de8-6226b3ca3d10/payment?password=Cicadas2015&address=1Mhe61CQavMB5CDRTccMEVhpYgJVHBeASb&amount=200000&from=1FeUWyhBvfjGyN4Ku4pUYSTQNw8vfRyWru&fee=10000&note=fuckblockchain'


puts response