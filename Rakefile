# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create do |t|
  # SimpleCov debe arrancar ANTES de minitest/autorun; el prelude se
  # ejecuta antes de cargar el framework.
  t.test_prelude = 'require "test/test_helper.rb"'
end

task default: :test
