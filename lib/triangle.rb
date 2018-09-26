class Triangle
  
attr_accessor :one, :two, :three

def initialize(one, two, three)
  @one = one 
  @two = two
  @three = three
end

puts "ONE:::: #{@one}"
def kind
  if @one == @two && @two == @three 
    :equilateral
  elsif (@one == @two && @two != @three) || (@two == @three && @two != @one) || (@one == @three && @one != @two)
    :isosceles
  elsif @one != @two && @three != @two
    :scalene
  elsif @one == 0
    begin
      raise TriangleError
      rescue TriangleError => error
      puts error.message
  else 
    nil
    end
  end 
end



  class TriangleError < StandardError
    def message 
    "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end

