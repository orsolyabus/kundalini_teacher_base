class Ability
  include CanCan::Ability

  def initialize(user)
    
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    alias_action(:create, :read, :update, :delete, to: :crud)

    can(:crud, User) do |this_user|
      user == this_user
    end
  end
    
end
