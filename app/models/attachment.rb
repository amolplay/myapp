class Attachment < ActiveRecord::Base
  mount_uploader :image,ImageUploader
  belongs_to :user
  belongs_to :product

  # def image=(val)
  #   if !val.is_a?(String) && valid?
  #     image_will_change!
  #     super
  #   end
  # end
  
end
