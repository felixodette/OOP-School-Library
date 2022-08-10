require_relative '../student'
require_relative '../person'
require 'yaml'
require 'rspec'

describe Student do
  before :each do
    @student = Student.new(1, 20, 'Jack')
  end

  it 'Student should be an instance of Person' do
    expect(@student).to be_a(Person)
  end

  it "Student\'s age should be 20" do
    expect(@student.age).to eql(20)
  end

  it "Student\'s name should be Jack" do
    expect(@student.name).to eql('Jack')
  end
end
