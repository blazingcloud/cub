module WorldExtensions
  PAGE_MAPPING = {
    "home" => "/"
  }
  def path_for(path)
    PAGE_MAPPING[path] || path
  end
end

World(WorldExtensions)