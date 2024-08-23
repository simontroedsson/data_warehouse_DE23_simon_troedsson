

def myFun(arg1, *argv):
    print(type(argv))
    for arg in argv:
        print("Next argument through *argv :", arg)




# Driver code
myFun('Hello', 'Welcome', 'to', 'GeeksforGeeks')
#myFun('Geeks','for','Geeks')
