class Scenario < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_many :wagers, dependent: :destroy
  has_many :bettors, through: :wagers, source: :user

end
