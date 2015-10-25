module BlockchainHelper
  require 'blockchain'


  # Add shit from the gem here

  def self.send(wagers)
    wagers.each do |wager|
      winning_amount = wager.amount * 2
      user = wager.user
      user_wallet = Blockchain::Wallet.new(user.wallet_id, user.password)
      wallet.send(user_wallet.new_address, winning_amount, from_address: wallet.new_address)
    end
  end

  def self.charge(wager)
    user = wager.user
    user_wallet = Blockchain::Wallet.new(user.wallet_id, user.password)
    user_wallet.send(wallet.new_address, wager.amount, from_address: user_wallet.new_address)
  end

  private 


  wallet = Blockchain::Wallet.new('8316b206-1abc-4faa-8de8-6226b3ca3d10', 'Cicadas2015')
end


