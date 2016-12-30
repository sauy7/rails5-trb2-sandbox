class Thing < ApplicationRecord
  class Policy < Sandbox::Policy # :nodoc:
    def index?
      true
    end
  end
end
