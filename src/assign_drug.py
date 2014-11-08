def assign_drug(_fname):
    number = int(_fname[-5:-4])
    result = ''
    if number % 2:
        result = "tylenol"
    else:
        result = "placebo"
    return result

import sys

filename = sys.argv[1]

print filename

assert( assign_drug('inflammation_1.dat') == 'tylenol' )

