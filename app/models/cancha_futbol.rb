class CanchaFutbol < ActiveRecord::Base
  belongs_to :turnos
  belongs_to :locals
  has_many:comentarios
end
