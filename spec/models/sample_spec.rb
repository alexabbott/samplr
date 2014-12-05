require "rails_helper"
require 'shoulda/matchers'

describe Sample do

	it { should validate_uniqueness_of(:name) }

	it { should ensure_length_of(:name).is_at_most(50)}

	it { should validate_uniqueness_of(:url) }

	it { should validate_presence_of(:category) }

	#add test for belong_to association
    it { should belong_to(:user) }

end