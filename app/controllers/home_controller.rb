class HomeController < ApplicationController
  def index
    run Thing::Index
    render concept('sandbox/cell/index', result['model'], layout: Sandbox::Cell::Layout)
  end
end
