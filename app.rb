# Pick a random number.
a = rand(100)
b = rand(100)
print "Jin Sakai has ", a, " hitpoint and 50 attack damage\n"

print "Khotun Khan has ", b, " hitpoint and 50 attack damage\n"

# Perform all sort of totally uselss test on it and report the results.
if rno % 2 == 1 then
    print "Ooooh, that's an odd number.\n"
else
    print "That's an even number.\n"
    if rno > 2 then
        print "It's not prime, BTW.\n"
    end
end

while a > 0
    print a, " "
    if a == 10 then
        print "made it to ten!!"
    end
    a = a + 1
end

print "Jin Sakai attacks Khotun Khan with 50 damage", 