class MyOpenStruct
  def initalize
    @attributes = {}
  end
  
  def method_missing(name, *args)
    attribute = name.to_s
    if attribute =~ /=$/
      @attribute[attribute.chop] = args[0]
    else
      @attribute[attribute]
    end
  end
end

icecream = MyOpenStruct.new
icecream.flavor = "vanilla"
puts icecream.flavor