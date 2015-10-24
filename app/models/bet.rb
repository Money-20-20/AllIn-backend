class Bet < ActiveRecord::Base
  belongs_to :user
  belongs_to :bet_item
end
