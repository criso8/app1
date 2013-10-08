class Tasks < ActiveRecord::Base
  belongs_to :TaskList
  attr_accessible :Completed, :Priority, :name
end
