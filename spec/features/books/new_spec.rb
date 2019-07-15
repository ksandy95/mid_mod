# require 'rails_helper'
#
# RSpec.describe 'New Book' do
#   describe 'As a user' do
#     before :each do
#       @dan = Author.create(name: 'Dan')
#       @stan = Author.create(name: 'Stan')
#       # @dog = @dan.books.create(title: 'The Strawberry Dog', pages: 23, publication_year: '1984')
#       @cat = @stan.books.create(title: 'Pete the Cat', pages: 30, publication_year: '2005')
#     end
# 
#     it 'I can click a link to create a new book' do
#       visit author_books_path(@dan)
#
#       click_link 'New Book'
#
#       expect(current_path).to eq(new_book_path(@dan))
#     end
#
#     it 'I can create a book for an author' do
#       title = 'The Strawberry Dog'
#       pages = 23
#       publication_year = '1984'
#
#       visit new_book_path(@dan)
#
#       fill_in 'Title', with: title
#       fill_in 'Pages', with: pages
#       fill_in 'publication_year', with: publication_year
#
#       click_button 'Create Book'
#
#       expect(current_path).to eq(author_books_path(@dan))
#       expect(page).to have_content(title)
#     end
#   end
# end
