require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end 
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end 
  end

  def count_sentences
    counted_arr = self.split
      if counted_arr.count == 0 
       0
      else 
        counted_arr.count
      end
      self.split(/[.!?]/).reject {|x| x.empty?}.size  #splits on all punctuation using regex and removes split criteria. Then counts remaining sentences. 
  end 
end