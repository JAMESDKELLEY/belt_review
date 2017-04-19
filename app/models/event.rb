class Event < ActiveRecord::Base
  belongs_to :state
  belongs_to :user
  has_many :event_rosters
  has_many :attendees, through: :event_rosters, source: :user
end
