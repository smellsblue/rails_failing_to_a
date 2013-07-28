require 'test_helper'

class ExampleTest < ActiveSupport::TestCase
  test "to_a outside of any scope" do
    assert_equal [examples(:one), examples(:two)], Example.where(:description => "An Example").order(:id).to_a
  end

  test "to_a outside named scope" do
    assert_equal [examples(:one), examples(:two)], Example.scope_without_to_a.to_a
  end

  test "to_a outside method scope" do
    assert_equal [examples(:one), examples(:two)], Example.method_without_to_a.to_a
  end

  test "to_a in a named scope" do
    assert_equal [examples(:one), examples(:two)], Example.scope_with_to_a
  end

  test "to_a in a method scope" do
    assert_equal [examples(:one), examples(:two)], Example.method_with_to_a
  end

  test "to_a named scope" do
    assert_equal [examples(:one), examples(:two)], Example.scope_without_to_a.scope_to_a
  end

  test "to_a method scope" do
    assert_equal [examples(:one), examples(:two)], Example.method_without_to_a.method_to_a
  end

  test "all named scope" do
    assert_equal [examples(:one), examples(:two)], Example.scope_without_to_a.scope_all
  end

  test "all method scope" do
    assert_equal [examples(:one), examples(:two)], Example.method_without_to_a.method_all
  end
end
