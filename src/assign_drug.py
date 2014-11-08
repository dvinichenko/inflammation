def assign_drug(_fname):
    number = int(_fname[-5:-4])
    result = ''
    if number % 2:
        result = "tylenol"
    else:
        result = "placebo"
    return result
