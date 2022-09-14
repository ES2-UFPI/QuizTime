class Answer < ApplicationRecord
  belongs_to :question

  #kaminari
  paginates_per 5
end
