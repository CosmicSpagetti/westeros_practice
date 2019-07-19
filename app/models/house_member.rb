class HouseMember 
  attr_reader :name,
              :id
  def initialize(member)
    @name = member[:name]
    @id = member[:id]
  end
end