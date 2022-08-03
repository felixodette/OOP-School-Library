class PERSON
  def initialize(name = "Unknown", age, parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def is_of_age?
    @age >= 18 ? true : false
  end

  private :is_of_age?

  def can_use_services?
    @age >= 18 || @parent_permission ? true : false
  end
end
