class Page < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "500x360>", :small => "250x180>" }
  def name
    read_attribute("name") || ""
  end
end
