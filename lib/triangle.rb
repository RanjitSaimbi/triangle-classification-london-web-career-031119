class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c) 
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @b + @c <= @a || @a + @c <= @b 
      raise TriangleError
    elsif @a == @b && @b == @c 
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    elsif @a + @b > @c || @b + @c > @a || @a + @c > @b
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    
  end
end
