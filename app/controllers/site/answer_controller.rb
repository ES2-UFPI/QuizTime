class Site::AnswerController < SiteController
    layout 'site'
    def question
       @answer = Answer.find(params[:answer_id])
       UserStatistic.set_statistic(@answer, current_user)
    end

end
