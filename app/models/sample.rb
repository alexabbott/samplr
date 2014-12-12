class Sample < ActiveRecord::Base

	validates_uniqueness_of :name 

	validates_length_of :name, maximum: 50

	# validates_uniqueness_of :url

	# validates_format_of :url, :with => URI::regexp(%w(http https))

	validates_presence_of :category  

	belongs_to :user

	has_attached_file :audiofile,
		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
		styles: { mp3: {} },
        processors: [:ffmpeg_wav_to_mp3]
	    
	validates_attachment_content_type :audiofile, :content_type => /.*/

end