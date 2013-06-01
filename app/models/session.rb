class Session < ActiveRecord::Base
  attr_accessible :location, :name, :start_time
  belongs_to :event
end
