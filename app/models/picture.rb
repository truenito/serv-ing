class Picture < ActiveRecord::Base
  attr_accessible :path, :property_id, :path_cache, :remove_path
  belongs_to :property
  mount_uploader :path, ImageUploader
end
