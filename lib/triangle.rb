class Triangle
  
attr_accessor :one, :two, :three

def initialize(one, two, three)
  @one = one 
  @two = two
  @three = three
end


def kind
  if @one == @two && @one == @three && @two == @three && @one != 0
    :equilateral
  elsif (@one == @two && @two != @three) || (@two == @three && @two != @one) || (@one == @three && @one != @two)
    :isosceles
  elsif (@one != @two && @three != @two && @one != @three) && @one > 0 && @two > 0 && @thee > 0
    :scalene
  elsif @one <= 1 || @one + @two <= @three || @one + @three <= @two || @two + @three <= @one
    raise TriangleError
  else 
    nil
  end
end



  class TriangleError < StandardError
    def message 
    "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end

