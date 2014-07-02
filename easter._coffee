# Requirements:
# equation for finding the day easter will fall on
# input: a year
# output: the date of easter
assert = require "assert"


div = (a, b) ->
  Math.floor a / b

assert.equal div(30, 7), 4
assert.equal div(45, 5), 9

################################################################################

getEaster = (year) ->
  a = year % 19
  b = div(year, 100)
  c = year % 100
  d = div(b,4)
  e = b % 4
  f = div((b+8), 25)
  g = div((b-f+1), 3)
  h = (19*a+b-d-g+15)%30
  i = div(c, 4)
  k = c % 4
  l = (32+2*e+2*i-h-k)%7
  m = div((a+11*h+22*l), 451)
  month = div((h+l-7*m+114),31)
  p = (h+l-7*m+114)%31
  day = p+1
  "easter of #{year} is on #{month}/#{day}"


console.log getEaster 1995
console.log getEaster 1975

assert.equal getEaster(1995), "easter of 1995 is on 4/16"
