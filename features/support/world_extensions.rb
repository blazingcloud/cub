module WorldExtensions
  PAGE_MAPPING = {
    "home" => "/",
    "New Event" => "/events/new"
  }

  def path_for(path)
    PAGE_MAPPING[path] || path
  end

  def page_should_be(page_name)
    current_path.must_equal(path_for(page_name))
  end

  def assert_logged_in
    visit "/"
    page.has_content?("Log out").must_equal(true)
    current_path.must_equal("/")
  end

  def assert_not_logged_in
    visit "/"
    page.has_content?("connect").must_equal(true)
    current_path.must_equal("/")
  end

  EVENTS = {
    "Women 2.0" => {
      :Name => "Women 2.0",
      :Description => "New Digital Startups With Female Founders",
      :"Start date" => "November 14, 2013".to_date,
      :"End date" => "November 16, 2013".to_date,
      :Location => "Las Vegas",
      :Url => "http://www.women2.com",
    }
  }
  def fill_out_event(event_name)
    event_hash = EVENTS[event_name]
    event_hash.each do | kv |
      fill_in(kv.first, :with => kv.last)
    end
  end

end

World(WorldExtensions)