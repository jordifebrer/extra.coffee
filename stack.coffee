# Simple stack class
class Stack
  constructor: -> @items = []
  push: (item) -> @items.push item
  pop: -> @items.pop()
  peek: -> @items[@items.length - 1]
  isEmpty: -> @items.length is 0
  size: -> @items.length
 
# Stack assertions
assert = (condition, message) ->
  if !condition
    message = message || "Assertion failed"
    if typeof Error isnt undefined
      throw new Error message
    throw message
 
s = new Stack
 
assert s.isEmpty() is true, "Stack not empty"
assert s.size() is 0, "Stack not empty"
 
s.push 1
s.push "abc"
 
assert s.size() is 2, "The stack doesn't have 2 items"
assert s.peek() is "abc", "Top element is not 'abc'"
 
s.pop()
 
assert s.size() is 1, "The stack doesn't have 1 item"

s.pop()
s.pop()

assert s.isEmpty() is true, "Stack not empty"
