require 'rails_helper' 

class Subject < ApplicationRecord
    validates :description, presence: true 
end

describe Subject do 
    it "Assunto criado" do
        subject = Subject.new(description:"matematicazona")
        expect(subject).to be_valid
    end
    
    it "Assunto Presente" do
        subject = Subject.new(description:"matematicazona")
        expect(subject.description).to eq("matematicazona")
    end
   
end