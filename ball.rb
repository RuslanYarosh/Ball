 def ball(way)
    way_array = way.split("")
    state = [1,0,0]
    while !(way_array.empty?)
      letter_step = way_array.shift
      case letter_step
      when "A"
        buf = state[0] 
        state[0] = state[2]
        state[2] = buf
      when "B"
        buf = state[0] 
        state[0] = state[1]
        state[1] = buf
      when "C"      
        buf = state[1] 
        state[1] = state[2]
        state[2] = buf
      end
    end
    print state
 end

ball("AABCCC")
