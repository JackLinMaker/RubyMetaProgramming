class MyClass
  define_method :my_method do |my_arg|
    my_arg * 3
  end
  
  define_method :my_puts do |my_arg|
    puts my_arg
  end
end

obj = MyClass.new
obj.my_method(2)
obj.my_puts(3)