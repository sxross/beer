class Beer
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter

  columns :name     => :string,
          :coordinate => 
          :lat      => :float,
          :long     => :float,
          :url      => :string

  def initialize(lat, long, name, link)
    @name                 = name
    @coordinate           = CLLocationCoordinate2D.new
    @coordinate.latitude  = lat
    @coordinate.longitude = long
    @url                  = NSURL.alloc.initWithString(link)
  end

  def title;      @name;       end
  def coordinate; @coordinate; end
  def url;        @url;        end

  if Beer.all.size < 0
    Beer.new(lat: 59.923469, long: 10.758304, name: 'Parkteateret',   url: 'http://parkteateret.no')
    Beer.new(lat: 59.923474, long: 10.757948, name: 'Cafe Fontes AS', url: 'http://cafefontes.no') 
    Beer.new(lat: 59.923489, long: 10.753748, name: 'DAQOTA',         url: 'http://cafefontes.no') 
  end
end

    #Beer.new(59.923469, 10.758304, 'Parkteateret',   'http://parkteateret.no', '10:00', '20:00'),
    #Beer.new(59.923474, 10.757948, 'Cafe Fontes AS', 'http://cafefontes.no',   '11:00', '22:00'),
    #Beer.new(59.923489, 10.753748, 'DAQOTA',         'http://cafefontes.no',   '12:00', '23:00')
