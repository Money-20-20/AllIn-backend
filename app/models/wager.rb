class Wager < ActiveRecord::Base
  belongs_to :scenario
  belongs_to :user

end
