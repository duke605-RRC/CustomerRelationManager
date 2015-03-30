class Customer < ActiveRecord::Base
  validates :full_name, presence: true

  def image
    return File.exist?(Rails.root.join("app/asstes/images/#{super}")) ? super : 'no-photo.jpg'
  end
end
