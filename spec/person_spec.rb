require_relative '../person'
require 'yaml'

describe Person do
  before :each do
    @person = Person.new(1, 20, 'Jack')
  end

  it 'ID should be 1' do
    expect(@person.id).to eql(1)
  end

  it 'Age should be 20' do
    expect(@person.age).to eql(20)
  end

  it 'Name should be Jack' do
    expect(@person.name).to eql('Jack')
  end
end
