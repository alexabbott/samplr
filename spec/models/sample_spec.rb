require "rails_helper"
require 'shoulda/matchers'

describe Sample do

	it { should validate_uniqueness_of(:name) }

	it { should ensure_length_of(:name).is_at_most(50)}

	it { should validate_presence_of(:category) }

	it { should have_attached_file(:audiofile) }

	#add test for belong_to association
    it { should belong_to(:user) }

    it { should validate_attachment_size(:audiofile).
                less_than(2.megabytes) }

   it { should validate_attachment_content_type(:audiofile).
                allowing('audio/wav', 'audio/mp3') }

end