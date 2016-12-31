class ThingsController < ApplicationController
  def new
    run Thing::New
    render concept('thing/cell/new', result['model'], layout: Sandbox::Cell::Layout)
  end

  def create; end
end
