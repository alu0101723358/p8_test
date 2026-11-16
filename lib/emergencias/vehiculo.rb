# Módulo principal del DSL de emergencias
module Emergencias
  # Representa a los vehículos y medios de transporte sanitario
  class Vehiculo
    attr_reader :identificador, :tipo
    attr_accessor :disponible

    # @param identificador [String] Matrícula o código identificativo del vehículo
    # @param tipo [Symbol] Tipo de vehículo (:svb, :sva, :vir, :helicoptero)
    def initialize(identificador, tipo)
      @identificador = identificador
      @tipo = tipo
      @disponible = true
    end
  end
end
