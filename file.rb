def verse(number)
  case  number
   when 0
    "#{quantity(number).capitalize}  #{container(number)} of  beer  on  the wall, " +
    "#{quantity(number)}  #{container(number)} of  beer.\n" +
    "#{action(number)} " +
    "#{quantity(99)} of  beer  on  the wall.\n"
  else
    "#{quantity(number).capitalize}  #{container(number)} of  beer  on  the wall, " +
    "#{number}  #{container(number)} of  beer.\n" +
    "#{action(number)}" +
    "#{quantity(successor(number))} #{container(number-1)} of  beer  on  the wall.\n"
  end
end

def successor(number)
  number - 1
end

def container(number)
  if  number  == 1
    "bottle"
  else
    "bottles"
  end
end

def pronoun(number)
  if number == 1
    "it"
  else
    "one"
  end
end

def quantity(number=0)
  if number == 0
    "no more"
  else
    number.to_s
  end
end

def action(number)
  if  number  == 0
    "Go to  the store and buy some  more"
  else
    "Take #{pronoun(number)}  down  and pass  it  around"
  end
end