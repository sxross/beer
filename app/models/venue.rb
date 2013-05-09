class Venue < Nitron::Model
  # CoreData requires that every fetch be ordered somehow.
  def self.all
    order("due")
  end

  # We're using a text field to display a date when data binding.
  def due
    primitiveValueForKey("due").to_s
  end
end
