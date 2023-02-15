class Triangle
  attr_accessor :len, :wid, :height
  def initialize(len, wid, height)
    @len =len
    @wid = wid
    @height = height 
  end 

  def kind 
    valid_triangle

    if len == wid && wid == height 
      return :equilateral
    elsif len == wid || wid == height || len == height 
      return :isosceles 
    else 
      return :scalene 
    end
  end 

  # check whether the sides are greater than 0
  def greater_than_zero
    if len && wid && height > 0 
      return true
    else 
      return false 
    end 
  end 
  # sum of the lengths of any two sides of a triangle always exceeds the length of the third side
  def triangle_inequality
    if len + wid > height && len + height > wid && wid + height > len
      return true 
    else 
      return false 
    end 
  end 

  def valid_triangle
    raise TriangleError unless greater_than_zero && triangle_inequality
  end 
  
  class TriangleError < StandardError 
  end 

end