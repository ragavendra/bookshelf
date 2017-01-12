require 'features_helper'
require 'minitest'

describe 'Visit home' do

	it 'Visit home' do
		visit "/"
		page.body.must_include("Bookshelf")
	end

end

