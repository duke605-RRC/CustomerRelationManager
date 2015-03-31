class Customer < ActiveRecord::Base
  validates :full_name, presence: true

  belongs_to :province

  def image
    return File.exist?(Rails.root.join("app/asstes/images/#{super}")) ? super : 'no-photo.jpg'
  end

  def province_name
    return province ? province.name : 'N/A'
  end
end
