from flask import Flask, render_template

app=Flask(__name__)

@app.route('temp')
def temp():
    #way2
    # dict_={
    #     'title':'我的第一个模板',
    #     'bookname':'钢铁是怎样炼成的',
    #     'author':'奥斯特洛夫斯基',
    #     'price':"30.5",
    #     'publisher':'华语出版社'
    # }
    title='我的第一个模板',
    bookname='钢铁是怎样炼成的',
    author='奥斯特洛夫斯基',
    price="30.5",
    publisher='华语出版社'

    # return render_template('01_temp.html',params=dict_)
    return render_template('01_temp.html',locals())


if __name__=="__main__":
    app.run(debug=True)

