class PaperBoy

attr_reader

def initialize(name, experience, earnings)
  @name       = name
  @experience = experience
  @earnings   = earnings
  end
end

########################################
timmy = PaperBoy.new("Timmy", 50, 1)
lucas = PaperBoy.new("Lucas", 50, 1)
ben = PaperBoy.new("Ben", 50, 1)
