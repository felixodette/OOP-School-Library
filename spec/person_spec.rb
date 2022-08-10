require_relative '../person'
require_relative 'yaml'

describe Person do
  before :each do
    @person = Person.new(20, 'Jack')
  end

  it 'Age should be 20' do
    @person.age.should eql 20
  end

  it 'Name should be Jack' do
    @person.name.should eql 'Jack'
  end
end
