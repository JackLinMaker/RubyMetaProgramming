def a_method
  return yield if block_given?
  'no block'
end

a_method
puts a_method {"Here is a block!"}