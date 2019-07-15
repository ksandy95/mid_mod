require 'rails_helper'
include ActionView::Helpers::NumberHelper

RSpec.describe 'Book Index Page' do

  describe 'As a user' do
    before :each do
      @dan = Author.create(name: 'Dan')
      @stan = Author.create(name: 'Stan')
      @dog = @dan.books.create(title: 'The Strawberry Dog', pages: 23, publication_year: '1984')
      @cat = @stan.books.create(title: 'Pete the Cat', pages: 30, publication_year: '2005')
    end

    it 'When I visit "/books" Then I see each book in the system.' do
      visit books_path

        expect(page).to have_content(@dog.title)
        expect(page).to have_content(@dog.pages)
        expect(page).to have_content(@dog.publication_year)
        expect(page).to have_content(@dan.name)

        expect(page).to have_content(@cat.title)
        expect(page).to have_content(@cat.pages)
        expect(page).to have_content(@cat.publication_year)
        expect(page).to have_content(@stan.name)
    end
  end
end
