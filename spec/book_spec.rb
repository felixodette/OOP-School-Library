require_relative '../book'
require 'yaml'

describe Book do
  before :each do
    @book = Book.new('title', 'author')
  end

  it 'Should print the title' do
    expect(@book.title).to eql('title')
  end

  it 'Should print the author' do
    expect(@book.author).to eql('author')
  end
end
