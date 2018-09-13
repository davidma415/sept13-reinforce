class Location
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class Trip
  def initialize
    @stops = []
  end

  def destination(destination)
    @stops.push(destination.name)
  end

  def itinerary
    puts "Began Trip."
    @stops.each_cons(2) do |trip|
      puts "Travelled from #{trip[0]} to #{trip[1]}"
    end
    puts "Ended trip."
  end
end

calgary = Location.new('Calgary')
edmonton = Location.new('edmonton')
tokyo = Location.new('tokyo')
spain = Location.new('spain')
vancouver = Location.new('vancouver')
korea = Location.new('korea')
vietnam = Location.new('vietnam')

trip = Trip.new
trip.destination(calgary)
trip.destination(edmonton)
trip.destination(tokyo)
trip.destination(spain)
trip.destination(vancouver)
trip.destination(korea)
trip.destination(vietnam)

trip.itinerary
