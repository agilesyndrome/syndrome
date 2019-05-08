require 'test_helper'

class Syndrome::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Syndrome
  end

  test "version" do
    assert_kind_of String, Syndrome::VERSION
  end

end
