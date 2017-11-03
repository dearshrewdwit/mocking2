class DockingStation
  def initialize(bikes, receipt_class = Receipt)
    @receipt_class = receipt_class
    @bikes = bikes
  end

  def working_bike_count
    @bikes.select { |bike| bike.working? }.count
  end

  def random_bike_working?
    @bikes.sample.working?
  end

  def print_receipt
    receipt = @receipt_class.new
    receipt.print
  end
end
