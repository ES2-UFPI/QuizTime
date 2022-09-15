require 'rails_helper' 

class User < ApplicationRecord
    validates :first_name, presence: true 
    validates :last_name, presence: true 
    validates :email, presence: true 
    validates :password, presence: true 
end

describe User do 
    it "é válido quando nome, último nome e email estão presentes" do 
     user = User.new( first_name: 'Bruce', last_name: 'Dickinson', email: 'bruce@ironmaiden.com',password: 123456 ) 
      
      expect(user).to be_valid 
    end

    it "First_name presente" do 
        user = User.new( first_name: 'Bruce', last_name: 'Dickinson', email: 'bruce@ironmaiden.com',password: 123456 ) 
         
        expect(user.first_name).to eq("Bruce")
    end

    it "Last_name presente" do 
        user = User.new( first_name: 'Bruce', last_name: 'Dickinson', email: 'bruce@ironmaiden.com',password: 123456 ) 
         
        expect(user.last_name).to eq("Dickinson")
    end

    it "Email presente" do 
        user = User.new( first_name: 'Bruce', last_name: 'Dickinson', email: 'bruce@ironmaiden.com',password: 123456 ) 
         
        expect(user.email).to eq("bruce@ironmaiden.com")
    end
end


