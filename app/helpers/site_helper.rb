module SiteHelper
    def msg_jumbotron
        case params[:action]
        when 'index'
            "Últimas perguntas cadastradas ..."
        when 'questions'
            "Resultados para o termo \"#{params[:term]}\"..."
        when 'subject'
            "Mostrando questões para o assunto \"#{params[:subject]}\"..."
        end
    end
end
