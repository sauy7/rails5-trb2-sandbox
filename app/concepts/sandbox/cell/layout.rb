class Sandbox::Cell::Layout < Trailblazer::Cell
  include ActionView::Helpers::CsrfHelper

  delegate :current_user, :flash, to: :parent_controller
end
