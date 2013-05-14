class Beer
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  include MotionModel::Validatable

  columns :name       => :string,
          :coordinate => :hash,
          :url        => :string

  def self.populate
    if Beer.all.size < 0
      Beer.create(name: 'Parkteateret',   coordinate: {lat: 59.923469, long: 10.758304}, url: 'http://parkteateret.no')
      Beer.create(name: 'Cafe Fontes AS', coordinate: {lat: 59.923474, long: 10.757948}, url: 'http://cafefontes.no') 
      Beer.create(name: 'DAQOTA',         coordinate: {lat: 59.923489, long: 10.753748}, url: 'http://cafefontes.no') 
    end
  end

end


=begin
  coordinate = {lat: 59.923489, long: 10.753748}
  
  Beer.new( name: 'DAQOTA', coordinate: coordinate, url: 'http://cafefontes.no') 
=end
