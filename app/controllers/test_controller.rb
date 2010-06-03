class TestController < ApplicationController
   layout "questions"
  def index
   @q = Question.all
  end
   
  def new
     @q = Question.find(:all , :order => 'RANDOM()', :limit => 10)
  end

  def results
   @correct = []
   @points = 0
   params["answer"].each_with_index { |ans,index|
      @correct[index] = {}
      @correct[index]["content"] =  Question.find(ans[0]).content 
      @correct[index]["good"] = Question.find(ans[0]).good_answer
      @correct[index]["selected"] = ans[1];
      if @correct[index]["good"] == @correct[index]["selected"] then
         @points = @points.next
      end 
   }
  end
end
