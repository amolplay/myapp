class User < ActiveRecord::Base
	has_many :attachments,:dependent => :destroy
	accepts_nested_attributes_for :attachments, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs['image'].blank? { |k, v| v.blank? } }



end
