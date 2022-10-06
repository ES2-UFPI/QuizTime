class UsersBackoffice::WelcomeController < UsersBackofficeController
    def index
        @user = User.find(current_user.id)
        @user_statistic = UserStatistic.find_or_create_by(user: current_user)
    end
end
