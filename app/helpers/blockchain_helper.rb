module BlockchainHelper
  require 'blockchain'
  require 'rest_client'


  # Add shit from the gem here

  def self.send(wagers)
    wallet = Blockchain::Wallet.new('8316b206-1abc-4faa-8de8-6226b3ca3d10', 'Cicadas2015')
    wagers.each do |wager|
      winning_amount = wager.amount * 2
      user = wager.user
      user_wallet = Blockchain::Wallet.new(user.wallet_id, user.password)
      url = "https://blockchain.info/merchant/" + user.wallet_id + "/payment?" + "password=" + user.password + "&address=" + wallet.new_address + "&amount=" + wager.amount.to_s + "&note=fuckblockchain"
      p url
      response = RestClient.get(url)
      # wallet.send(user_wallet.new_address, winning_amount.to_s, from_address: wallet.new_address)
    end
  end

  def self.charge(wager)
    wallet = Blockchain::Wallet.new('8316b206-1abc-4faa-8de8-6226b3ca3d10', 'Cicadas2015')

    user = wager.user
    url = "https://blockchain.info/merchant/" + user.wallet_id + "/payment?" + "password=" + user.password + "&address=" + "1JzSZFs2DQke2B3S4pBxaNaMzzVZaG4Cqh" + "&amount=" + "10000" + "&note=fuckblockchain"
    response = RestClient.get 'https://blockchain.info/merchant/8316b206-1abc-4faa-8de8-6226b3ca3d10/payment?password=Cicadas2015&address=1Mhe61CQavMB5CDRTccMEVhpYgJVHBeASb&amount=200000&from=1FeUWyhBvfjGyN4Ku4pUYSTQNw8vfRyWru&fee=10000&note=fuckblockchain'


    puts response
  end

  private 

  def wallet
    wallet = Blockchain::Wallet.new('8316b206-1abc-4faa-8de8-6226b3ca3d10', 'Cicadas2015')
  end
end


