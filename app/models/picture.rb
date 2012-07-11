class Picture
  include Mongoid::Document
  attr_accessible  :name, :image, :desc
  field :name, :type => String
  field :desc, :type => String
  field :image
  
  mount_uploader :image, ImageUploader
end
