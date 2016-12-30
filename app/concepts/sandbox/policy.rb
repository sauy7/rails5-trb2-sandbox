module Sandbox
  class Policy # :nodoc:
    attr_reader :user, :resource

    def initialize(user, resource)
      @user = user
      @resource = resource
    end

    def admin?
      @user.admin?
    end

    def super_admin?
      @user.super_admin?
    end
  end
end
