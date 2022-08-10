require 'rspec'
require_relative '../teacher'
require_relative '../person'

describe 'Teacher' do
  before :each do
    @teacher = Teacher.new(1, 20, 'Math', 'Jack')
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'Teacher should be a person' do
      expect(@teacher).to be_a(Person)
    end

    it "Teacher's id should be 1" do
      expect(@teacher.id).to eql(1)
    end

    it 'Teacher\'s age should be 20' do
      expect(@teacher.age).to eq(20)
    end

    it 'Teacher\'s specializtion to be Math' do
      expect(@teacher.specialization).to eql('Math')
    end

    it 'Teacher\'s name to be Jack' do
      expect(@teacher.name).to eql('Jack')
    end

    it "can_use_services? should return true" do
      expect(@teacher.can_use_services?).to eq(true)
    end
  end
end
