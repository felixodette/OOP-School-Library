require_relative '../book'
require 'yaml'

describe Book do
  before :each do
    @book = Book.new('title', 'author')
  end

  it 'Should print the title' do
    @book.title.should eql 'title'
  end

  it 'Should print the author' do
    @book.author.should eql 'author'
  end
end
