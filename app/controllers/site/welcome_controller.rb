class Site::WelcomeController < SiteController
  layout 'site'
  def index
    @questions = Question.last_questions(params[:page])
    @questions2 = Question.all
  end
end
