require "sum_of_numbers/version"

module SumOfNumbers
  def self.total_num(str)
    if (str.include?("-"))
      raise "Negative numbers are not allowed"
    else
      total = 0
      str.gsub(/[^0-9]/, "+").split('+').reject {
        |t| t.empty?
      }.each {
        |strnum| total = total + strnum.to_f
      }
      return total
    end
  end
end