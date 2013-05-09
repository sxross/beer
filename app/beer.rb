class Beer
  def initialize(lat, long, name, link, sun_from, sun_to)
    @name                 = name
    @coordinate           = CLLocationCoordinate2D.new
    @coordinate.latitude  = lat
    @coordinate.longitude = long
    @url                  = NSURL.alloc.initWithString(link)
    @sun_from             = sun_to
    @sun_to               = sun_to
  end

  def title;      @name;       end
  def coordinate; @coordinate; end
  def url;        @url;        end

  def self.with_sun
    All[0]
  end

  All = [
    Beer.new(59.923469, 10.758304, 'Parkteateret',   'http://parkteateret.no', '10:00', '20:00'),
    Beer.new(59.923474, 10.757948, 'Cafe Fontes AS', 'http://cafefontes.no',   '11:00', '22:00'),
    Beer.new(59.923489, 10.753748, 'DAQOTA',         'http://cafefontes.no',   '12:00', '23:00')
  ]
end
