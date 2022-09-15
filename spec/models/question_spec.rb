require 'rails_helper' 

class Question < ApplicationRecord
    validates :description, presence: true 
end

describe Question do 
    it "Em deselvolvimento" do
        
    end
end


