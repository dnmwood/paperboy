class PaperBoy

  attr_reader

  def initialize(name, experience, earnings)
    @name       = name
    @experience = experience
    @earnings   = earnings
  end

  def quota
   @experience / 2 + 50
  end

  def deliver(start_address, end_address)
    #calculate number of houses
    number_of_houses = end_address - start_address
    #calculate money made
    money_made = number_of_houses * 0.25
    #increase experience by number of Houses
    @experience += number_of_houses
    #increase total earnings by money made
    @earnings += money_made
  end

  def report
  end
end

timmy = PaperBoy.new("Timmy", 80, 1)
lucas = PaperBoy.new("Lucas", 70, 1)
ben = PaperBoy.new("Ben", 60, 1)

puts timmy.quota
puts lucas.quota
puts ben.quota
