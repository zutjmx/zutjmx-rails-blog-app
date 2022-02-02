class Articulo < ApplicationRecord
  belongs_to :autor
  
  validates :titulo, presence: {:message => "No puede estar vacío"}
  validates :contenido, presence: {:message => "No puede estar vacío"}, length: {minimum:10, maximum:50, :message => "Mínimo 10, Máximo 50"}

end
