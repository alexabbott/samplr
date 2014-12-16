class Sample < ActiveRecord::Base

	validates_uniqueness_of :name 

	validates_length_of :name, minimum: 1, maximum: 50

	validates_presence_of :category  

	belongs_to :user

	# paperclip attachment stored to dropbox
	has_attached_file :audiofile,
		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
	    
	validates_attachment_content_type :audiofile, :content_type => /.*/

	# limit uploaded audiofiles to 2 megabytes maximum
	validates_attachment_size :audiofile, :less_than => 2.megabytes

end