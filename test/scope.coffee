# Scope
# -----

# * Variable Safety
# * Variable Shadowing
# * Auto-closure (`do`)
# * Global Scope Leaks

test "reference `arguments` inside of functions", ->
  sumOfArgs = ->
    sum = (a,b) -> a + b
    sum = 0
    sum += num for num in arguments
    sum
  eq 10, sumOfArgs(0, 1, 2, 3, 4)

test "assignment to an Object.prototype-named variable should not leak to outer scope", ->
  # FIXME: fails on IE
  (->
    constructor = 'word'
  )()
  ok constructor isnt 'word'
