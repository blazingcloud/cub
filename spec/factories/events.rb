# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  sequence(:event_name) { |n| "conference \##{n}" }
  factory(:event) do
    name { generate(:event_name) }
    start_date "June 10, 2013"
    end_date "June 14, 2013"
    location "San Francisco, CA, USA"
  end
end
