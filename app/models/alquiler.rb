class Alquiler < ActiveRecord::Base
  belongs_to :cancha_futbol
  belongs_to :usuarios
end
