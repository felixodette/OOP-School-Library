require 'json'

module BookStorage
  def store_books(books)
    data = []
    file = 'books.json'
    return unless File.exist?(file)

    books.each do |book|
      data << { title: book.title, author: book.author }
    end

    File.write(file, JSON.generate(data))
  end

  def load_books
    data = []
    file = 'books.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |book|
        data << Book.new(book['title'], book['author'])
      end
    end
    data
  end
end
