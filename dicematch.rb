nod = 4
noc = 1000000
rolls = []
dicetype = 6
succeed = 0
fail = 0

noc.times do
  nod.times do
    rolls.push(1 + rand(dicetype))
  end

rolls.sort!
rolls.uniq!
  
if rolls.length == 1 :
  succeed += 1
else
  fail += 1
end
rolls.clear
end

percentage = succeed.to_f / noc.to_f * 100

print "When rolling #{nod} d#{dicetype}'s #{noc} times, there were #{succeed} instances of all dice matching, and #{fail} failures, which is #{percentage}%. \n"


  
  
