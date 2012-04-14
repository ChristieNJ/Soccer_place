class Local < ActiveRecord::Base
attr_accessible :nombre, :direccion, :distrito, :latitude, :longitude, :telefono_fijo
geocoded_by :direccion,:distrito => :dir
after_validation :geocode
has_many:comentarios
end
