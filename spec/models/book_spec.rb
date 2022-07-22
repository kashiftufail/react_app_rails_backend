require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a valid attributes' do
    book = Book.new(title: 'lovely rspec',description: 'lovely way to solid testing with rspec')
    expect(book).to be_valid
  end
  it 'is not valid without title' do
    book = Book.new(title: nil)
    expect(book).not_to be_valid
  end
  it 'is not valid without description' do
    book = Book.new(description: nil)
    expect(book).not_to be_valid
  end
  it 'is valid with valid title length' do
    book = Book.new(title: 'lovely rspec',description: 'lovely way to solid testing with rspec')
    expect(book).to be_valid
  end
  
  it 'is valid with valid description length' do
    book = Book.new(title: 'lovely rspec',description: 'lovely way to solid testing with rspec')
    expect(book).to be_valid
  end



  


end
