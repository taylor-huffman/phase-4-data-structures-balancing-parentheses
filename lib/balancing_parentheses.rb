require_relative './stack'

def balancing_parentheses(input)
    stack = Stack.new
    input.chars.each do |c|
        stack.peek == '(' && c == ')' ? stack.pop : stack.push(c)
    end
    stack.size
end
