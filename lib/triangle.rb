require 'pry'
class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3


  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
      if ((side_1 <= 0) || (side_2 <= 0) || (side_3 <= 0) || (side_2 + side_3 <= side_1) || (side_1 + side_3 <= side_2) || (side_1 + side_2 <= side_3))
        #for complex booleans, use parenthesis.
      begin
        raise TriangleError
      end
    elsif ((side_2 == side_3 && side_2 != side_1 && side_3 != side_1) || (side_1 == side_3 && side_1 != side_2 && side_2 != side_3) || (side_1 == side_2 && side_1 != side_3 && side_2 != side_3))
      :isosceles
    elsif ((side_1 == side_2 ) && (side_1 == side_3) && (side_2 == side_3))
      #here we can't simply say if 1==2 ==3 because it must only be in sets of two
      #so we do something like if 1==2 && 2==3 && 1==3 instead
       :equilateral
    else
      #no need to specify what scalene is if all others are accounted for
       :scalene
     end
  end
end

  class TriangleError < StandardError

  end
