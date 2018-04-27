class ArtPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user
  end

  def update?
    record_belongs_to_user_or_admin?
  end

  def destroy?
    update?
  end

  def like?
    true
  end

  def unlike?
    true
  end

  def record_belongs_to_user_or_admin?
    return false unless user
    record.user == user || user.admin
  end

  def claim?
    # update?
    record.artist_id == nil && user.type == "StreetArtist"
  end
end
