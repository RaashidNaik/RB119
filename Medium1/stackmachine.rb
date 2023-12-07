def minilang(command)
  register = 0
  stack = []
  command.split.each do |comm|
    if comm.to_i.to_s == comm
      register = comm.to_i
    elsif comm == 'PUSH'
      stack << register
    elsif comm == 'ADD'
      register = register + stack.pop
    elsif comm == 'SUB'
      register = register - stack.pop
    elsif comm == 'MULT'
      register = register * stack.pop
    elsif comm == 'DIV'
      register = register / stack.pop
    elsif comm == 'MOD'
      register = register % stack.pop
    elsif comm == 'POP'
      register = stack.pop
    elsif comm == 'PRINT'
      p register
    end
  end
end


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)