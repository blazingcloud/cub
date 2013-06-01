class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :name, :start_date, :url
  has_many :sessions
end
