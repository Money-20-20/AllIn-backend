class Bet < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :bet_users
  has_many :bettors, through: :bet_user, source: :user
end
