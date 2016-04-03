class CelestialBody
	attr_accessor :type, :name
end

altair = CelestialBody.new # Create the first CelestialBody
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new # Instead of copying the reference, get a reference to a second Celestial Body
polaris.name = 'Polaris'
polaris.type = 'Star' # We need to set the type on each object separately
vega = CelestialBody.new # Get a reference to a third object
vega.name = 'Vega'
vega.type = 'star'

puts altair.name, polaris.name, vega.name

puts altair.object_id
puts polaris.object_id
puts vega.object_id