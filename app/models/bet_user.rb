class BetUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :bet
end
