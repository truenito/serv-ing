class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper


  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def default_url
    "defaults" + [version_name, "default.png"].compact.join('_')
  end

  version :full_size do
    process :resize_to_limit => [400, 300]
  end

  version :slideshow_thumb, :from => :full_size do
    process :resize_to_limit => [60, 42]
  end

end
