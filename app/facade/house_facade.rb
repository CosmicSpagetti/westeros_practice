class HouseFacade 
  def initialize(house)
    @house = house
  end

  def count 
    service.count
  end

  def members
    service.map do |member|
      HouseMember.new(member)
    end
  end

  private 

  def service 
    @_service ||= WesterosService.new(@house).parse_house_response
  end
end