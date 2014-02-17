class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
		:default_url => "/images/:style/missing.png"
	validates	:image, :attachment_presence => true
	# validates_with AttachmentPresenceValidator, :attributes => :image


	scope :small_image, where(:image_file_size => 10000)
end
