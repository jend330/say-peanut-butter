class Ability
    include CanCan::Ability 

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    cannot :edit, Product, id: product.id
    cannot :destroy, Product, id: product.id
  end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #

  
end
