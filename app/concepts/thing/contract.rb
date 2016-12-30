class Thing < ApplicationRecord
  module Contract
    class Create < Reform::Form
      property :name

      validation do
        required(:name).filled(:str?)
      end
    end
  end
end