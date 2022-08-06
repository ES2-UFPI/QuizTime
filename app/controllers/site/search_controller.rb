class Site::SearchController < SiteController
    layout 'site'
    def questions
        @questions = Question._search_(params[:page], params[:term])
    end
end
