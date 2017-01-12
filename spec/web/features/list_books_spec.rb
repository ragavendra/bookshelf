require 'features_helper'

describe 'List books' do

	let(:repository) { BookRepository.new }

	before do
		repository.clear
		repository.create(title: 'TDD', author: 'Kent Beck')
		repository.create(title: 'Let us C', author: 'Yeshawant Kanetkar')
	end
	
	it 'List books' do
		visit "/books"

		within '#books' do
			assert page.has_css?('.book', count: 2), 'Expected to find 2 books'
			body.must_include("Bookshelf")
		end
	end

end

