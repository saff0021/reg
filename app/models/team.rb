class Team < ActiveRecord::Base
  has_many :hitters
  has_many :pitchers
  belongs_to :draft
end
