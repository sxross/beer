class Venue 
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter

  columns :name     => :string,
          :lat      => :float,
          :long     => :float,
          :sun_from => :float,
          :sun_to   => :float,
          :url      => :string
end

=begin
    Venue.create(lat: 59.923469, long: 10.758304, name: 'Parkteateret',   url: 'http://parkteateret.no', sun_from: '10:00', sun_to: '20:00')
    Venue.create(lat: 59.923474, long: 10.757948, name: 'Cafe Fontes AS', url: 'http://cafefontes.no',   sun_from: '11:00', sun_to: '22:00')
    Venue.create(lat: 59.923489, long: 10.753748, name: 'DAQOTA',         url: 'http://cafefontes.no',   sun_from: '12:00', sun_to: '23:00')
=end
