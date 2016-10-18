# rubyclass

###String

Write a StringDemystifier class that - when its demystify function is called - applies the following rules (in order of precedence, and until they can no longer be applied) to any string it is given in its constructor:

- If a character has the same character to its left and right, it should be replaced with that other character (i.e. AWA becomes AAA) unless the surrounding character is a space
- Any sequence of six characters should be replaced with a single character, i.e. AAAAAA becomes A
- Any instance of the exclamation mark (!) character causes the string to be reversed, and the exclamation mark character removed

Commit each step of your development process. When you're done, try running it on the following string and see what result you get (hint: you'll know when you've done it right):

!YTIRCO!IQIIQIDEMGMMIM FO YMJMMSM!RA !EGEEJEHT ROEOOSOF PAEJEEBEL TN!AIKIITIG ENVNNMNO ,GQGGCGN!ILEKIZIISIRT A RJRRDROF PETOTTJTS LLZLLEL!AMSXSSMS ENODOOSO
