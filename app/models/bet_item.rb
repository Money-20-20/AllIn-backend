class BetItem < ActiveRecord::Base
  belongs_to :event
  belongs_to :user


  has_many :bets
  has_many :bettors, through: :bets, source: :user
end
