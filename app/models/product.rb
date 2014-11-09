class Product < ActiveRecord::Base
	#mount_uploader :image,ProductimageUploader
	has_many :attachments,:dependent => :destroy
	accepts_nested_attributes_for :attachments, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }	

end
