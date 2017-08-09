require 'pry'

class String

  def sentence?
    self.split("").last == "." ? true : false
  end

  def question?
    self.split("").last == "?" ? true : false
  end

  def exclamation?
   self.split("").last == "!" ? true : false
  end

  def count_sentences
    array = self.split(/[?.!]/)
    array.delete_if do |string|
      string == ""
    end

    array.size
  end

end
