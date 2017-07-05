# Options Hashes
#
# Write a method `transmogrify` that takes a `String`. This method should
# take optional parameters `:times`, `:upcase`, and `:reverse`. Hard-code
# reasonable defaults in a `defaults` hash defined in the `transmogrify`
# method. Use `Hash#merge` to combine the defaults with any optional
# parameters passed by the user. Do not modify the incoming options
# hash. For example:
#
# ```ruby
# transmogrify("Hello")                                    #=> "Hello"
# transmogrify("Hello", :times => 3)                       #=> "HelloHelloHello"
# transmogrify("Hello", :upcase => true)                   #=> "HELLO"
# transmogrify("Hello", :upcase => true, :reverse => true) #=> "OLLEH"
#
# options = {}
# transmogrify("hello", options)
# # options shouldn't change.
# ```

# def transmogrify(input, options = {})
#   defaults = {
#   times: 3,
#   upcase: false,
#   reverse: false
#   }
#   defaults.merge(options)
#
#   input *= defaults[:times] if :times
#
#   input.upcase! if :upcase
#
#   input.reverse! if :reverse
#
#   input
# end

def transmogrify(input, times: 3, upcase: false, reverse: false )

  input *= times if times

  input.upcase! if upcase

  input.reverse! if reverse

  input
end
