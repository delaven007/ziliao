#tornado基本功能演示

#ALT+ENTER
import tornado
from tornado.ioloop import IOLoop
from tornado.web import Application, RequestHandler
from tornado.web import HTTPServer

#路由的判断 :用来响应用户请求
class IndexHandler(RequestHandler):
    def get(self,*args,**kwargs):
        self.write("hello aid1710")
    def post(self,*args,**kwargs):
        pass

#创建application对象：进行若干个对服务器的设置
#eg:路由列表、模板路径、静态资源...
app=Application([('/',IndexHandler)])
#创建服务器
server=HTTPServer(app)
#监听端口(端口号10000以上)
server.listen(8888)
#启动服务器
IOLoop.current().start()
















