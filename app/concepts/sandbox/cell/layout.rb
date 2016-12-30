module Sandbox
  module Cell
    class Layout < Trailblazer::Cell # :nodoc:
      include ActionView::Helpers::CsrfHelper

      delegate :current_user, :flash, to: :parent_controller
    end
  end
end
