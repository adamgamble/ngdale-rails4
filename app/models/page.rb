class Page < ActiveRecord::Base
  def name
    read_attribute("name") || ""
  end
end
