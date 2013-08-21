class C
  def initialize
    @x, @y = 1, 2
  end
end

puts C.new.instance_exec(3) {|arg| (@x + @y) * arg}