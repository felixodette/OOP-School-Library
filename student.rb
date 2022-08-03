require "./person.rb"

class Student < Person
  def initialize(name = "Unknown", classroom, age, parent_permission = true)
    super(name, age)
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end
