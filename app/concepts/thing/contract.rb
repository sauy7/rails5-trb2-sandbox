class Thing::Contract::Create < Reform::Form
  property :name

  validation do
    required(:name).filled(:str?)
  end
end
