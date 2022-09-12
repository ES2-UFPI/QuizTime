class Site::WelcomeController < SiteController
  layout 'site'
  def index
    @questions = Question.last_questions(params[:page])
  end
end
