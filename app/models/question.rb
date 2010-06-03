class Question < ActiveRecord::Base
  belongs_to :test
  validates_presence_of :content, :good_answer, :a1, :a2, :a3, :a4
   
   def check(answer)
        return self.good_answer == answer
   end
end
