# frozen_string_literal: true

class ApplicationPolicy
  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def permitted_attributes
    []
  end

  protected

  def admin_or_owner?
    user.admin? || user.owner?
  end

  def admin?
    user.admin?
  end

  def guest?
    user.guest?
  end

  def citizen?
    user.citizen?
  end

  def servant?
    user.servant?
  end

  def owner
    resource.user == user
  end
end
