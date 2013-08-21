class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  self
  @v
end

v = 2
obj.instance_eval { @v = v }
puts obj.instance_eval { @v }
