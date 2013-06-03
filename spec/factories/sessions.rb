# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  sequence(:session_name) { |n| "session \##{n}" }
  sequence(:room) { |n| "room \##{n}" }
  factory(:session) do
    name { generate(:session_name) }
    start_time "June 10, 2013 2:30pm".to_datetime
    location { generate(:room) }
  end
end
