class Triangle
  # write code here
  # accepts three arguments on initialization
  #Each argument is a length of the three sides of triangle(s1,s2,s3)
  #define an instance method #kind 
  attr_reader:s1,:s2,:s3
 def initialize(s1,s2,s3)
  @s1=s1
  @s2=s2
  @s3=s3
 end
 def kind 
  check_validation
  if s1==s2 && s2==s3
    :equilateral
  elsif s1==s2||s2==s3||s3==s1
    :isosceles
  elsif @s1!=@s2 && s2!=@s3
    :scalene
  end
end
  def positive
    [s1,s2,s3].all?(&:positive?)
  end

  def valid
    s1+s2>s3&&s2+s3>s1&&s3+s1>s2
  end

  def check_validation 
    raise TriangleError unless positive && valid 
  end

  class TriangleError < StandardError
  end
end
