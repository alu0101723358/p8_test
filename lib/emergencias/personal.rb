# Módulo principal del DSL de emergencias
module Emergencias
  # Representa a los profesionales sanitarios asignados al servicio
  class Personal
    attr_reader :nombre, :categoria
    attr_accessor :disponible

    # @param nombre [String] Nombre del profesional
    # @param categoria [Symbol] Rol sanitario (:medico, :enfermero, :tcae, :tes, :celador)
    def initialize(nombre, categoria)
      @nombre = nombre
      @categoria = categoria
      @disponible = true
    end
  end
end
