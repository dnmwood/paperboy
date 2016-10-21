class PaperBoy

  attr_reader :name, :experience, :earnings

  def initialize(name)
    @name       = name
    @experience = 0
    @earnings   = 0
end

  def quota

      return (experience/2) + 50
end

  def deliver(start_address, end_address)

    number_of_houses = end_address-start_address

    if quota < number_of_houses
    earnings = ((number_of_houses-quota)*0.50) + (quota * 0.25)

    elsif quota > number_of_houses
      earnings = ((number_of_houses*0.25) - 2)

    else
      earnings = number_of_houses*0.25


    end
    @earnings += earnings
    @experiences += number_of_houses
end

def report
    return "#{name.upcase} has deliverd #{@experience} papers and has earned $#{@earnings}."
  end
end


timmy = PaperBoy.new("Timmy")

timmy.deliver(15, 200)

puts timmy.report
