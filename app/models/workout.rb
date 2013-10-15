class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :datez, :meters, :user_id
end
