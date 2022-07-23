require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "validation" do 
    it { should validate_presence_of(:name) }

  end
  
  describe "associations" do 
    it { should have_many(:books) }
    
  end
end
