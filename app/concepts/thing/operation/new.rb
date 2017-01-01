class Thing::New < Trailblazer::Operation
  extend Contract::DSL
  contract Thing::Contract::Create

  step Model(Thing, :new)
  step Policy::Pundit(Thing::Policy, :create?)
  step Contract::Build()
end
