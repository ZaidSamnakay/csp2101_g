#!/bin/bash


#student number: 10496218
#name: Zaid Samnakay


# First command deletes the first line of 'rectangle.txt'.

# The command on line 24 substitutes Name: Rec for all instances of Rec in rectangle.txt.

# The command on line 25 substitutes '  Height: ' for the first instance of ',' on each line of 'rectangle.txt'

# The command on line 26 substitutes ' Height' for the first instance of 'Height' on lines where the
# pattern 'Rec' followed by a digit and a blank space is found.

# The command on line 27 substitutes '  Width: ' for the first instance of ',' on each line of 'rectangle.txt'.

# The command on line 28 substitutes ' Width' for the first instance of 'Width' on lines
# where the pattern blank space followed by a digit followed by ' Width' is found.

# The command on line 29 substitutes ' Area: ' for the first instance of ',' on each line of 'rectangle.txt'.

# The command on line 30 substitutes ' Colour: ' for the first instance of ',' on each line of 'rectangle.txt'.

# The command on line 31 substitutes '  Colour' for the first instance of 'Colour' on lines where
# the pattern blank space followed by two digits is found.

# The command on line 32 substitutes ' Colour' for the first instance of 'Colour' on lines where
# the pattern blank space followed by three digits is found.

# Each command is making changes to 'rectangle.txt' and saving them in 'rectangle_f.txt'.

sed -e '1d'\
    -e 's/Rec/Name: Rec/g'\
    -e 's/,/  Height: /'\
    -E -e '/Rec[0-9][[:blank:]]/ s/Height/ Height/'\
    -e 's/,/  Width: /'\
    -E -e '/[[:blank:]][0-9]  Width/ s/Width/ Width/'\
    -e 's/,/  Area: /'\
    -e 's/,/  Colour: /'\
    -E -e '/[[:blank:]][0-9]{2}  Colour:/ s/Colour/  Colour/'\
    -E -e '/[[:blank:]][0-9]{3}  Colour:/ s/Colour/ Colour/' rectangle.txt > rectangle_f.txt
exit 0
# Exit the program.