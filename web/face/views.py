from django.shortcuts import render

from face.models import stauth,tauth,csp

from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, redirect,HttpResponse
from django.contrib.auth import authenticate
from django.contrib.auth.decorators import login_required
import boto3
from django.db import connection



def getsub():
    global subid
    mysub=''
    with connection.cursor() as cursor:
        try:

            sql = "SELECT * FROM subject WHERE subject_id = %(sub)s"
            cursor.execute(sql, {'sub': subid})


            for row in cursor.fetchall():
                mysub = row[1]
        except:
            mysub=subid
            pass
    return mysub
def show(request):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM csp")
        students=cursor.fetchall()
        res=[]
        mysum=[]
        for student in students:
            res.append(list(student))
            s=(int(student[3])+int(student[4])+int(student[5])+int(student[6])+int(student[7]))
            mysum.append(s)

        for i in range(len(res)):
            res[i].append(mysum[i])

    return render(request,'show.html',{'students':res})




def dset(roll,branch_id,sub_id,sem,tid,date,present):


    #print(roll,branch_id,sub_id,sem,tid,date,present)
    cm="'"

    roll=""+cm +str(roll)+cm+""
    branch_id = "" + cm + str(branch_id) + cm + ""
    sub_id = "" + cm + str(sub_id) + cm + ""
    sem = "" + cm + str(sem) + cm + ""
    tid = "" + cm + str(tid) + cm + ""
    date = "" + cm + str(date) + cm + ""
    present = "" + cm + str(present) + cm + ""

    #sq="INSERT INTO `attendance` (`id`, `branch_id`, `student_id`, `sem`, `teacher_id`, `subject_id`, `date`, `present`) VALUES (NULL, "+ str(roll)+", "+ str(branch_id)+", "+ str(sub_id)+", "+ str(sem)+","+ str(tid)+", "+ str(date)+", "+ str(present)+")"

    with connection.cursor() as cursor:

        try:

         cursor.execute("INSERT INTO `attendance` (`id`, `branch_id`, `student_id`, `sem`, `teacher_id`, `subject_id`, `date`, `present`) VALUES (NULL, "+ str(branch_id)+", "+ str(roll)+", "+ str(sem)+", "+ str(tid)+","+ str(sub_id)+", "+ str(date)+", "+ str(present)+")")

        except:

            pass


def authenticate(username):
    user=""
    with connection.cursor() as cursor:
        try:

         cursor.execute("SELECT * FROM stauth WHERE roll=" + str(username))

         for row in cursor.fetchall():

             user = row[3]
        except:
            user = 0
            pass
    return user


def tauthenticate(user):

    with connection.cursor() as cursor:
        try:

          cursor.execute("SELECT * FROM tauth WHERE username="+str(user))


          for row in cursor.fetchall():

                user = row[4]
        except:

            user = 0
            pass
    return user


def tlogin(request):
    if request.method=='POST':

        user = request.POST.get('user', '')
        password = request.POST.get('pass', '')
        pwd=tauthenticate(user)

        if pwd==password:
           request.session['username'] = user
           return redirect('/choose')

        else:
            return render(request, 'tlogin.html', {'error': 'Invalid Login'})




    return render(request,'tlogin.html')




def login(request):
    if request.method=='POST':

        username = request.POST.get('user', '')
        password = request.POST.get('pass', '')
        user=authenticate(username)

        if user==password:
           request.session['username'] = username
           return show_st(request,username)

        else:
            return render(request, 'login.html', {'error': 'Invalid Login'})




    return render(request,'login.html')



def stdetails(request):

    roll=request.session['username']
    name=""
    sem=""
    with connection.cursor() as cursor:
        try:

          cursor.execute("SELECT * FROM student WHERE sid="+str(roll))


          for row in cursor.fetchall():

              name=row[1]
              sem=row[3]
        except:
            pass


    return name,sem




def show_st(request,username):
    data=[]

    if request.session.has_key('username'):
        username = request.session['username']
    with connection.cursor() as cursor:
        try:

          cursor.execute("SELECT * FROM attendance WHERE student_id="+str(username))

          presentnum=0
          absentnum=0

          for row in cursor.fetchall():

              total=list(row)
              print(total)
              if total[7]=='1':
                  total[7]='P'
                  print('P')
                  presentnum+=1

              else:
                  print('A')
                  total[7]='A'
                  absentnum+= 1


              with connection.cursor() as cursor:
                  try:

                      cursor.execute("SELECT * FROM subject WHERE subject_id="+str(total[5]))


                      for row in cursor.fetchall():

                          total[5]=row[1]
                  except:

                      pass
              a=[total[5],total[6],total[7]]
              data.append(a)



        except:
            pass
    name=""
    sem=""
    absentnum=absentnum+presentnum
    name,sem=stdetails(request)
    return render(request,'showst.html',{'present':presentnum,'total':absentnum,'data':data,'usr':username,'name':name,'sem':sem})

def signup(request):
    if request.method == 'POST':

        username = request.POST.get('roll', '')
        password = request.POST.get('pass', '')
        email=request.POST.get('email', '')
        mob= request.POST.get('mobile', '')

        user=stauth(roll=username,
                                 email=email,
                                 password=password,mobile=mob)

        user.save()
        if user:

            return redirect('/login')
        else:

            return HttpResponse('<h1>INTERNAL SERVER ERROR 404</h1>')


    return render(request,'signup.html')





#@login_required(login_url='/login')
prsent=" "
def upload(request):

    if request.method == 'POST':

        uploaded_file = request.FILES['document']

        fs = FileSystemStorage()

        fs.save(uploaded_file.name, uploaded_file)

        s3 = boto3.resource('s3')
        data = open('face/photos/' + uploaded_file.name, 'rb')
        s3.Bucket('knits3').put_object(Key='1.jpg', Body=data)
        client = boto3.client('rekognition', region_name='us-east-1')
        global b
        global branch_id
        global subid
        global date
        global sem
        global tid
        global present
        present = 0
        start='16'+str(branch)+'01'
        last = '16' + str(branch) + '58'

        present=0
        for x in range(int(start),int(last)):
            x = str(x)

            response = client.compare_faces(
                SourceImage={
                    "S3Object": {
                        "Bucket": "knits3",
                        "Name": x + ".jpg",
                    }
                },
                TargetImage={
                    "S3Object": {
                        "Bucket": "knits3",
                        "Name": '1.jpg',
                    }
                }, )



            
            if len(response['FaceMatches']) > 0:
                per = response['FaceMatches'][0]['Similarity']

            else:
                per = 80
            with connection.cursor() as cursor:
                try:

                    cursor.execute("SELECT * FROM student WHERE sid=" + str(x))

                    for row in cursor.fetchall():
                        sem = row[3]
                        branch_id = row[5]
                        global name
                        name = row[1]
                        tid = 1


                except:

                    pass

            global subid

            global date
            if per>91:
                print(x,name,"Present")

                dset(x, branch_id, subid, sem, tid, date, '1')

                present+=1



                b.append([x,name,'P'])

            else:
                print(x, name,"Absent")
                dset(x, branch_id, subid, sem, tid, date, '0')
                b.append([x,name,'A'])

        start='178'+str(branch)+'01'
        last = '178' + str(branch) + '13'

        for x in range(int(start),int(last)):
            x = str(x)
            print(x)
            response = client.compare_faces(
                SourceImage={
                    "S3Object": {
                        "Bucket": "knits3",
                        "Name": x + ".jpg",
                    }
                },
                TargetImage={
                    "S3Object": {
                        "Bucket": "knits3",
                        "Name": '1.jpg',
                    }
                }, )

            print("succes photo",x)


            if len(response['FaceMatches']) > 0:
                per = response['FaceMatches'][0]['Similarity']

            else:
                per = 80
            with connection.cursor() as cursor:
                try:

                    cursor.execute("SELECT * FROM student WHERE sid=" + str(x))

                    for row in cursor.fetchall():
                        sem = row[3]
                        branch_id = row[5]

                        name = row[1]
                        tid = 1


                except:

                    pass




            if per>91:


                dset(x, branch_id, subid, sem, tid, date, '1')

                present+=1



                b.append([x,name,'P'])

            else:
                dset(x, branch_id, subid, sem, tid, date, '0')
                b.append([x,name,'A'])
        print(present,b)

        return fchart(request,present,b)

    return render(request, 'upload.html')
b=[]
name=" "
branch_id=" "
tid=" "
def chart(request):


    if request.method == 'POST':

        p = request.POST.getlist('checks[]')
        sub = request.POST.get('sub', '')
        date = request.POST.get('date', '')
        global subid
        subid=sub

        param=['roll,branch_id,sub_id,sem,tid,date,present']
        tid='1'
        pres='1'
        present= 0

        b=[]
        all1=[]
        print(all)
        for x1 in all:
            if x1 not in p:
                all1.append(x1)
        all1=list(set(all1))
        all1.sort()


        for roll1 in all1:
            pre.append(roll1)

            a = []
            with connection.cursor() as cursor:
                try:

                    cursor.execute("SELECT * FROM student WHERE sid=" + str(roll1))


                    for row in cursor.fetchall():
                        global sem
                        sem = row[3]
                        branch_id = row[5]
                        name = row[1]


                except:

                    pass

            dset(roll1, branch_id, sub, sem, tid, date, '0')
            b.append([roll1,name,'A'])







        for roll in p:
            pre.append(roll)

            a=[]
            with connection.cursor() as cursor:
                try:

                    cursor.execute("SELECT * FROM student WHERE sid=" + str(roll))

                    for row in cursor.fetchall():
                        sem=row[3]
                        branch_id=row[5]
                        name=row[1]


                except:

                    pass

            dset(roll,branch_id,sub,sem,tid,date,pres)
            present += 1
            b.append([roll, name, 'P'])


        mysub=getsub()
        x=[]
        x.append(b)
        x.insert(0,mysub)
        x.insert(0,present)







    return render(request,'chart.html',{'b':x,'date':date})

pre=[]
b=[]
sem=""
branch=""
subname=""
def at(request):
    if request.method == 'POST':
        global branch
        branch = request.POST.get('branch', '')
        global sem

        sem = request.POST.get('sem', '')
        mode = request.POST.get('mode', '')
        if mode=='face':
            return redirect('/selsub')




    a=[]
    with connection.cursor() as cursor:
        try:

         cursor.execute("SELECT * FROM student WHERE branch_id="+str(branch)+" AND sem="+str(sem))

         for row in cursor.fetchall():
            a.append([row[0],row[1]])
            global all

            all.append(row[0])



        except:

            pass

    b=[]
    with connection.cursor() as cursor:
        try:

         cursor.execute("SELECT * FROM subject WHERE  branch_id="+str(branch)+" AND sem="+str(sem))

         for row in cursor.fetchall():


            b.append([row[0],row[1]])
        except:

            pass
    x=[]
    x.append(b)
    x.append(a)


    return render(request, 'at.html', {'x': x,'usr':request.session['username']})




all=[]


def choose(request):

    a=[]
    with connection.cursor() as cursor:
        try:

         cursor.execute("SELECT * FROM branch")
         for row in cursor.fetchall():
             a.append([row[0],row[1]])


        except:

            pass

    return render(request,'choose.html',{'branch':a,'usr':request.session['username']})

def index(request):

    return render(request,'index.html')



def about(request):

    return  render(request,'about.html')


subid=''
def selsub(request):
    b = []
    with connection.cursor() as cursor:
        try:

            cursor.execute("SELECT * FROM subject WHERE  branch_id=" + str(branch) + " AND sem=" + str(sem))

            for row in cursor.fetchall():



                b.append([row[0],row[1]])
        except:

            pass


    return render(request,'selsub.html',{'x':b,'usr':request.session['username']})

date=" "
def date(request):
    global date
    sub = request.POST.get('sub', '')
    date = request.POST.get('date', '')
    global subid
    subid=sub




    return redirect('/upload')


def fchart(request,prsent,b):

    mysub=getsub()

    x=[]
    x.append(b)
    x.insert(0,mysub)
    x.insert(0,present)
    global date


    return render(request,'chart.html',{'b':x,'date':date})


def logout(request):
    if request.session.has_key('username'):
        #username = request.session['username']
        request.session['username'] = ''
    return render(request,'index.html')