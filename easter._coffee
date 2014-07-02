# Requirements:
# equation for finding the day easter will fall on
# input: a year
# output: the date of easter
assert = require "assert"


div = (a, b) ->
  Math.floor a / b

assert.equal div(30, 7), 4
assert.equal div(45, 5), 9
