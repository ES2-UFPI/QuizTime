module SiteHelper

    def msg_jumbotron
        case params[:action]
        when 'index'
            "Ultimas perguntas cadastradas"
        when 'questions'
            "Resultados para o termo \"#{params[:term]}\"..."
        when 'subject'
            "Mostrando questoes para o assunto \"#{params[:subject]}\"..."
        end
    end
end
