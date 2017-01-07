class Triangle
  # write code here
  attr_accessor :sides

  def initialize (s1, s2, s3)
    @sides = []
    @sides << s1
    @sides << s2
    @sides << s3
  end

  def kind
    if @sides.any? {|s| s<=0} || @sides[0]>=@sides[1]+@sides[2] || @sides[1]>=@sides[0]+@sides[2] || @sides[2]>=@sides[0]+@sides[1]
      raise TriangleError
    else
      puts "Side 1: #{@sides[0]}, Side 2: #{@sides[1]}, Side 3: #{@sides[2]}"
      puts "test eq= #{@sides[0] == @sides[1] && @sides[1] == @sides[2]}"
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
          :equilateral
      elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
          :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError

end
