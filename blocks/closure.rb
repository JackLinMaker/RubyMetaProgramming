def my_method
  x = "Good bye"
  yield("cruel")
end

x = "Hello"
my_method {|y| "#{x}, #{y} world"}