class Site::AnswerController < SiteController
    layout 'site'
    def question
       @answer = Answer.find(params[:answer_id])
    end
end
