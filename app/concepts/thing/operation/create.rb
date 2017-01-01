require_dependency File.join(Rails.root, 'app', 'concepts', 'thing', 'operation', 'new.rb')

class Thing::Create < Trailblazer::Operation
  extend Contract::DSL
  contract Thing::Contract::Create

  # The following steps are included in Thing::New but Nested fails
  step Model(Thing, :new)
  step Policy::Pundit(Thing::Policy, :create?)
  step Contract::Build()
  # Nested(Thing::New)
  step Contract::Validate(key: 'thing')
  step Contract::Persist(method: :save)
end
