class Thing < ApplicationRecord
  class Index < Trailblazer::Operation
    step :model!
    # step Policy::Pundit(Thing::Policy, :index?)

    def model!(options, **)
      options['model'] = Thing.all
    end
  end

  class New < Trailblazer::Operation
    # extend Contract::DSL

    # contract Contract::Create

    step Model(Thing, :new)
    # step Contract::Build()
  end

  class Create < Trailblazer::Operation
    # nested(New)
    # step Contract::Validate()
    # step Contract::Persist()
  end
end