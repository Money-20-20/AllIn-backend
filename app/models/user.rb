class User < ActiveRecord::Base
  has_many :scenarios
  has_many :wagers
end
