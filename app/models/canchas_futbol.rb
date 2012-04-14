class CanchasFutbol < ActiveRecord::Base
  belongs_to :turnos
  belongs_to :locals
  has_many :coments
 
end
