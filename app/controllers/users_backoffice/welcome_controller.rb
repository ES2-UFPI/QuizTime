class UsersBackoffice::WelcomeController < UsersBackofficeController
    def index
        @user = User.find(current_user.id)
    end
end
