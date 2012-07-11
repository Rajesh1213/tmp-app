class User
  include Mongoid::Document
  field :provider, :type => String
  field :uid, :type => String
  field :name, :type => String
  field :email, :type => String
  field :image_url, :type => String
  field :admin, :type => Boolean
  attr_accessible :provider, :uid, :name, :email, :image_url

  has_many :posts

  validates_uniqueness_of :email
  validates_format_of     :email, :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i,
    :message => "must_be_a_valid_email_address"

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.image_url = auth['info']['image'] || ""
      end
    end
  end

end

