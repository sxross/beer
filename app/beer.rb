class Beer
  def initialize(lat, long, name, link)
    @name                 = name
    @coordinate           = CLLocationCoordinate2D.new
    @coordinate.latitude  = lat
    @coordinate.longitude = long
    @url                  = NSURL.alloc.initWithString(link)
  end

  def title; @name; end
  def coordinate; @coordinate; end
  def url; @url; end

  All = [
    Beer.new(59.923469, 10.758304, 'Parkteateret',  'http://parkteateret.no'),
    Beer.new(59.923474, 10.757948, 'Cafe Fontes AS', 'http://cafefontes.no'),
    Beer.new(59.923489, 10.753748, 'DAQOTA', 'http://cafefontes.no')
  ]
end
