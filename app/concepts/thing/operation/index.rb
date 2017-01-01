class Thing::Index < Trailblazer::Operation
  step :model!
  step Policy::Pundit(Thing::Policy, :index?)

  def model!(options, **)
    options['model'] = Thing.all
  end
end
