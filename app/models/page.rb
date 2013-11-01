class Page < ActiveRecord::Base
  has_attached_file :image
  def name
    read_attribute("name") || ""
  end
end
