from flask import Flask,render_template,request
from flask_mysqldb import MySQL




#Initializations
app=Flask(__name__)


#Db
app.config['MYSQL_HOST']= 'localhost'
app.config['MYSQL_USER']= 'root'
app.config['MYSQL_PASSWORD']= ''
app.config['MYSQL_DB']= ''
mysql= MySQL(app)




#Routes
@app.route('/')
def index():
    return render_template('index.html')




@app.route('/namesearch',methods=['POST','GET'])
def namesearch():
    if request.method == 'POST':
        yazilmis_eleman= request.form[str('itemara')]
        cur = mysql.connection.cursor()
        stexham=yazilmis_eleman
        stexrep=stexham.replace("'", "")
        stexfnish=stexrep.split(" ")

        if yazilmis_eleman !=None:
            while True:
                try:
                    b= cur.execute("select * from personel where Ad = '{}' and Soyad='{}'".format(stexfnish[0],stexfnish[1]))
                    dataa = cur.fetchall()
                    mysql.connection.commit()
                    if b==b:
                        return render_template('bulundu.html', veriler=dataa)
                    else:

                        return render_template('bulunamadı.html')
                except:
                    try:
                        a=cur.execute("select * from personel where Ad='{}' ".format(stexfnish[0]))
                        print(a)
                        dataa = cur.fetchall()
                        mysql.connection.commit()
                        if a==a:
                            return render_template('bulundu.html', veriler=dataa)
                        else:
                            return render_template('bulunamadı.html')
                    except:
                        print('ASF')
                break
        else:
            exit()
    return render_template('namesearch.html')


@app.route('/Meslegegorearattir',methods=['POST','GET'])
def Meslegegorearattir():
    if request.method == 'POST':
        yazilmis_eleman= request.form[str('meslekitemara')]
        cur = mysql.connection.cursor()
        if yazilmis_eleman !=None:
            try:
                cur.execute("select * from personel where Meslek ='{}'".format(yazilmis_eleman))
                dataa = cur.fetchall()
                mysql.connection.commit()
                return render_template('bulundu.html', veriler=dataa)
            except:
                pass
            try:
                cur.execute("select * from personel where Meslek ='{}' ".format(yazilmis_eleman))
                dataa = cur.fetchall()
                mysql.connection.commit()
                return render_template('bulundu.html', veriler=dataa)
            except:
                return 'SSA'
        else:
            render_template('bulunamadı.html')
    return render_template('Meslegegorearattir.html')



@app.route('/MemurNo',methods=['POST','GET'])
def MemurNo():
    if request.method == 'POST':
        yazilmis_eleman = request.form[str('MemurNo')]
        cur = mysql.connection.cursor()
        if yazilmis_eleman !=None:
            cur.execute("select * from personel where MemurNo = '{}'".format(yazilmis_eleman))
            dataa= cur.fetchall()
            return render_template('bulundu.html',veriler=dataa)
    else:
        pass
    return render_template('MemurNo.html')


@app.route('/MYSQL_SYNTAX',methods=['POST','GET'])
def MYSQL_SYNTAX():
    if request.method == 'POST':
        yazilmis_eleman= request.form[str('Mysql_syntax_search')]
        cur = mysql.connection.cursor()
        if yazilmis_eleman != None:
            try:
                cur.execute("select*from personel where {}".format(str(yazilmis_eleman)))
                dataa= cur.fetchall()
                mysql.connection.commit()
                return render_template('bulundu.html',veriler=dataa)
            except:
                return render_template('bulunamadı.html')
        else:
            return render_template('bulunamadı.html')
    return render_template('MYSQL_SYNTAX.html')

# starting the app
if __name__ == '__main__':
      app.run('localhost',4449)
