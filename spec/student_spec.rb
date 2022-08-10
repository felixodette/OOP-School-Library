require_relative '../student'
require_relative '../person'
require 'yaml'

describe Student do
  before :each do
    @student = Student.new(1, 20, 'Jack', parent_permission: false)
  end

  it 'Student should be an instance of Person' do
    @student.should be_a Person
  end

  it "Student\'s id should be 1" do
    @student.id.should eq 1
  end

  it "Student\'s age should be 20" do
    @student.age.should eq 20
  end

  it "Student\'s name should be Jack" do
    @student.name.should eql 'Jack'
  end

  it "Student\'s parent permission should be false" do
    @student.parent_permission.should eq false
  end

  it "can_use_services? should return true" do
    @student.can_use_services?.should eq true
  end
end
