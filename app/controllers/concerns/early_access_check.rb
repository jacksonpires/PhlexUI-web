module EarlyAccessCheck
    extend ActiveSupport::Concern

    def restrict_to_early_access!
        if Current.user.nil? || Current.user.not_subscribed?
            flash[:notice] = "You must be a paying customer to access this page."
            redirect_to root_path
        end
    end
end