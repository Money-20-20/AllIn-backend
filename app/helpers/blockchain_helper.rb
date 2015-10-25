module BlockChainHelper
  require 'blockchain'


  # Add shit from the gem here

  def send(user, amount)
    wallet.send(user.address, amount, from_address)
  end

  def receive(user, amount)
    wallet.send(user.address, amount, from_address)
  end


  private 

  from_address = "1FeUWyhBvfjGyN4Ku4pUYSTQNw8vfRyWru"

  wallet = Blockchain::Wallet.new('8316b206-1abc-4faa-8de8-6226b3ca3d10', 'Cicadas2015')
end