class Workout < ActiveRecord::Base
  
  scope :datesort, -> { order(:datez)}
  scope :long, -> { where('meters < ? AND meters >= ? ',  25000, 10000)}
  scope :short, -> { where('meters >= ? AND meters < ?', 0, 10000)}



  belongs_to :user
  attr_accessible :datez, :meters, :user_id


  

end

