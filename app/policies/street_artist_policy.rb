class StreetArtistPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def record_belongs_to_user_or_admin?
    return false unless user
    record.user == user || user.admin
  end

  def street_artist?
    record.type == "StreetArtist"
  end
end
