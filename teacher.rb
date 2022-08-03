require "./person.rb"

class Teacher < Person
  def initialize(name = "Unknown", age, specialization, parent_permission = true)
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end