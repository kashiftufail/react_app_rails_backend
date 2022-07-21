require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a valid attributes'
  it 'is not valid without title'
  it 'is not valid without description'
  it 'is valid with valid title length'
  it 'is valid with valid description length'
end
