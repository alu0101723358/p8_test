require "test_helper"

class TestEmergencias < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Emergencias::VERSION
  end

  def test_error_class_exists
    assert_kind_of Class, Emergencias::Error
  end

  def test_area_atencion_initialization
    area = Emergencias::AreaAtencion.new("Sala de Triaje", :triaje, 2)
    assert_equal "Sala de Triaje", area.nombre
    assert_equal :triaje, area.tipo
    assert_equal 2, area.capacidad
  end

  def test_personal_initialization
    medico = Emergencias::Personal.new("Dra. García", :medico)
    assert_equal "Dra. García", medico.nombre
    assert_equal :medico, medico.categoria
    assert medico.disponible
  end

  def test_vehiculo_initialization
    heli = Emergencias::Vehiculo.new("HELI-01", :helicoptero)
    assert_equal "HELI-01", heli.identificador
    assert_equal :helicoptero, heli.tipo
    assert heli.disponible
  end
end
