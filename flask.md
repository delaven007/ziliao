1.搭建结构

```
from flask import Flask
app=Flask(__name__)

@app.route('/路径')
def fun():
	return ""
if __name__=="__main__":
	app.run(debug=True,port=5555)   #端口被占用，修改
```

2.路由

​	

```
	@app.route()	来表示路由

	@app.route(‘/’)	#访问根路径
	
	@app.route("/user/<name>")	：访问路径/user/***
	@app.route('/user/<age>')	:路径/user/***
	@app.route('/<int:page>') :转成整形 
	
	def user(age):
	#age 是一个整数
	return ""
	
```

类型转换器:

```
默认 ：字符串（不允许有 /）
path : 字符串（允许有 /）
```

路由的反向解析

```
url_for (funNAme,arg1=value1,arg2=value2)

	funName :反向生成地址的函数名

	arg1~n:传递给url的参数的名和值
```

Tempates -模板（包含响应文本的文件，有占位变量）

```python
flask表面用模板，其实他没有模板，他用的jinja2的模板

1.模板设置：需要在flask程序中创建一个templates目录
2.渲染模板: render_template() 			#将模板渲染成字符串，再响应
   render_template('***.html',arg1=value1,argt2=value2)
		***.html:要渲染的文件
        arg:要传递给模板的变量占位符
1.变量
	变量是一种特殊占位符，告诉模板引擎该位置的值是从渲染模板时的数据中来获取的(支持很多数据类型，不包括类)
    模板中：{{变量名}}
   html中写在标签之间{{变量名}}
```

