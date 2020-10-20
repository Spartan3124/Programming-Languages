# Name: Caleb Fischer
# File: main.py
import re
p = re.compile("((1)*(00)*)*\Z") #// replace string with correct regex
s = raw_input()
print p.match(s)
