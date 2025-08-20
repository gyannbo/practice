


def askIfOk(prompt, retries = 3, remainder = 'try again maybe'):
    while True:
        ans = input(prompt)
        if ans in 'yes':        ## la version du tutoriel c'était in {'ye', 'yes', 'y'}
            return True
        if ans in 'no':
            return False
        retries -= 1
        if retries < 0:
            raise ValueError('too much wrong answers')
        print(remainder)

askIfOk('say yes or no\n')

askIfOk('say yes or no \n', 1, 'only one more chance')

