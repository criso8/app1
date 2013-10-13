class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :meters, :user_id
end
