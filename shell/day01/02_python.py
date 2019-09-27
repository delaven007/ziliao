import sys

length=len(sys.argv)
if length ==3:
    number =int(sys.argv[1]) +int( sys.argv[2])
    print('{}+{}={}'.format(sys.argv[1],sys.argv[2],number))
else:
    print("参数个数有误")
