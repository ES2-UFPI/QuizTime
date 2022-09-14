module AdminsBackofficeHelper
    def translate_attribute(object = nil, method = nil)
        if object && method
            object.model.human_attribute_name(method)
        else
            "Informe os parametros corretos"
        end   
    end
end
