class ApplicationController < ActionController::Base
    # Set Layout
    layout :layout_by_resource





    protected
        def layout_by_resource
            if devise_controller? && resource_class == Admin
                "admin_devise"
            elsif devise_controller? && resource_class == User
                "user_devise"
            else
                "application"
            end
        end

end
