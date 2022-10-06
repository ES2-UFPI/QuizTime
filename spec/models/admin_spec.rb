require 'rails_helper'

describe Admin do 
    it "Senha presente" do 
        admin = Admin.new( email: 'bruce@ironmaiden.com', password: 123456 ) 
        
        expect(admin.password).to eq(123456)
    end

    it "Email presente" do
        admin = Admin.new(email:
        'bruce@ironmaiden.com', password: 123456 )

        expect(admin.email).to
        eq("bruce@ironmaiden.com")
    end

end 