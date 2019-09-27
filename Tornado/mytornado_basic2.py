#tornado基本功能演示

#ALT+ENTER
import tornado
from tornado.ioloop import IOLoop
from tornado.options import define, options, parse_config_file
from tornado.web import Application, RequestHandler
from tornado.web import HTTPServer

#路由的判断 :用来响应用户请求
class IndexHandler(RequestHandler):
    def get(self,*args,**kwargs):
        self.write("hello aid1710")
    def post(self,*args,**kwargs):
        pass
#定义变量，代表端口号
#自带方法，类型必须整形，带默认值,是否多个
define('port',type=int,default=8888,multiple=False)
#定义一个变量，用来代表数据库的连接信息（用户名，密码，端口号,数据库名称)
define('db',multiple=True,type=str,default=[])

#从指定的配置文件中读取配置文件
parse_config_file('config')


#创建application对象：进行若干个对服务器的设置
#eg:路由列表、模板路径、静态资源...



app=Application([('/',IndexHandler)])
#创建服务器
server=HTTPServer(app)
#监听端口(端口号10000以上)
server.listen(options.port)
#打印获得的数据库参数
print('数据库参数:',options.db)
#启动服务器
IOLoop.current().start()
















