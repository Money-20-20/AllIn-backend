class User < ActiveRecord::Base
  has_many :bets
  has_many :bet_users
  has_many :events
  has_many :items_bet_on, through: :bet_user, source: :bet
end
