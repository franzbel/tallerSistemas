class DrinkMenu < ActiveRecord::Base
	has_and_belongs_to_many :orders

	validates :name, presence: {:message => "- El nombre de la bebida es un campo obligatorio"}
	validates :name, uniqueness: {case_sensitive: false, :message => "- La bebida ya existe"}

	validates :description, presence: {:message => "- La descripcion es un campo obligatorio"}

	validates :price, presence: {:message => "- El precio es un campo obligatorio"}
	validates :price, numericality: {:message => "- El valor del precio debe ser numerico"}
	validates :price, length: {minimum: 2, maximum: 3, :message => "- El precio debe tener entre 2 a 3 digitos"}
	validates :price, numericality: {greater_than: 0, :message => "- El precio no puede ser negativo"}
end
