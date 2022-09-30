class Site::AnswerController < SiteController
    layout 'site'
    def question
       @answer = Answer.find(params[:answer_id])
       set_user_statistic(@answer)
    end


    private
        def set_user_statistic(answer)
            if user_signed_in?
                user_statistic = UserStatistic.find_or_create_by(user: current_user)
                if @answer.correct?
                    user_statistic.right_questions += 1
                else
                    user_statistic.wrong_questions += 1
                end
                user_statistic.save
            end
        end
end
