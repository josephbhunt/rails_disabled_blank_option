module CarsHelper
  def car_names
    %w(volvo saab mercedes audi)
  end

  def car_names_with_blank
    car_names.map{|c| [c, c]}.prepend(['Choose a car', nil])
  end
end
