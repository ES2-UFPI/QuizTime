require 'rails_helper' 

class User < ApplicationRecord
    validates :first_name, presence: true 
    validates :last_name, presence: true 
    validates :email, presence: true 
    validates :password, presence: true 
end

describe User do 
    it "é válido quando nome, último nome e email estão presentes" do 
     user = User.new( first_name: 'Bruce', 
      last_name: 'Dickinson', 
      email: 'bruce@ironmaiden.com',
      password: 12333344 ) 
      
      expect(user).to be_valid 
     end 
   end