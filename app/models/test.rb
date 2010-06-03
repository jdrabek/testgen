class Test < ActiveRecord::Base
  has_many :questions 
  validate :all_checked

   def all_checked
      logger.debug "TAK: #{@test.count}"
      false
   end
  
end
