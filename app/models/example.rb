class Example < ActiveRecord::Base
  scope :scope_without_to_a, -> { where(:description => "An Example").order(:id) }
  scope :scope_with_to_a, -> { where(:description => "An Example").order(:id).to_a }
  scope :scope_to_a, -> { to_a }
  scope :scope_all, -> { all }

  class << self
    def method_without_to_a
      where(:description => "An Example").order(:id)
    end

    def method_with_to_a
      where(:description => "An Example").order(:id).to_a
    end

    def method_to_a
      to_a
    end

    def method_all
      all
    end
  end
end
