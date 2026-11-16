# Módulo principal del DSL de emergencias
module Emergencias
  # Representa un área o espacio físico en el servicio de urgencias
  class AreaAtencion
    attr_reader :nombre, :tipo, :capacidad

    # @param nombre [String] Nombre descriptivo del área
    # @param tipo [Symbol] Categoría del área (:triaje, :reanimacion, :box_agudo, etc.)
    # @param capacidad [Integer] Capacidad de pacientes simultáneos
    def initialize(nombre, tipo, capacidad = 1)
      @nombre = nombre
      @tipo = tipo
      @capacidad = capacidad
    end
  end
end
