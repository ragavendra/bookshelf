require 'features_helper'

describe 'Visit home' do

	it 'Visit home' do
		visit "/"
		page.body.must_include("Bookshelf")
	end

end

