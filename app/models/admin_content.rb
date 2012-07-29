class AdminContent < ActiveRecord::Base
  attr_accessible :map, :map_file_name, :map_content_type, :map_file_size, :map_updated_at, :map_content_type
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/tiff', 'image/jp2']

  has_attached_file :map,
  :url => "/:class/:attachment/:id/:style_:basename.:extension",
  :default_url => "/:class/:attachment/missing_:style.png"
end
