class AttachmentUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  #process :resize_to_limit =>[500, 500]

  # if Rails.env.production?
  #   storage :fog
  # else
  #   storage :file
  # end
  # version :thumb do
  #    process resize_to_fill: [280, 280]
  #  end

  #  version :small_thumb, from_version: :thumb do
  #    process resize_to_fill: [20, 20]
  #  end


  def default_url(*args)
     "/images/fallback/" + [version_name, "default.png"].compact.join('_')
   end


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
