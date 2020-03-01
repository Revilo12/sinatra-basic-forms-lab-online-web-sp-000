# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy
  attr_accessor :name, :breed, :age

  def self.new_from_hash(hash)
    puppy = Puppy.new(nil, nil, nil)
    hash.each do |key, value|
      send("#{key}=", value)
    end
    puppy
  end

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
end
