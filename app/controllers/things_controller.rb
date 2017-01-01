class ThingsController < ApplicationController
  def new
    run Thing::New
    render concept('thing/cell/new',
                   @_result,
                   layout: Sandbox::Cell::Layout)
  end

  def create
    run Thing::Create
    if @_result.success?
      redirect_to root_path
    else
      render concept('thing/cell/new',
                     @_result,
                     layout: Sandbox::Cell::Layout)
    end
  end
end
