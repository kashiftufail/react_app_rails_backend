require 'rails_helper'

RSpec.describe Book, type: :model do

  subject {
    described_class.new(title: "lovely rspec",
                        description: "lovely way to solid testing with rspec")
  }


  it 'is valid with a valid attributes' do    
    expect(subject).to be_valid
  end
  it 'is not valid without title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without description' do
    subject.description = nil
    expect(subject).not_to be_valid
  end
  it 'is invalid with short title length' do
    subject.title = 'lo'    
    expect(subject).not_to be_valid
  end
  
  it 'is invalid with short description length' do
    subject.description = 'too short'
    expect(subject).not_to be_valid
  end

end
