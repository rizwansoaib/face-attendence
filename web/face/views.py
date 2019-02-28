from django.shortcuts import render

from face.models import stauth,tauth,csp

from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, redirect,HttpResponse
from django.contrib.auth import authenticate
from django.contrib.auth.decorators import login_required
import boto3
from django.db import connection

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




def set(roll,crnt):

    with connection.cursor() as cursor:

        try:
         print(roll,crnt)
         cursor.execute("UPDATE csp SET kcs601 =" + str(crnt) + " WHERE roll = " + str(roll))


        except:

            pass



def get(roll):
    with connection.cursor() as cursor:
        try:

         cursor.execute("SELECT * FROM csp WHERE roll=" + str(roll))

         for row in cursor.fetchall():
             present,name=int(row[3]),str(row[2])

        except:
            present=None
            pass
    return present,name


def authenticate(username):
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
           return redirect('/upload')

        else:
            return render(request, 'tlogin.html', {'error': 'Invalid Login'})




    return render(request,'tlogin.html')




def login(request):
    if request.method=='POST':

        username = request.POST.get('user', '')
        password = request.POST.get('pass', '')
        user=authenticate(username)

        if user==password:
           print("call show_st")
           return show_st(request,username)

        else:
            return render(request, 'login.html', {'error': 'Invalid Login'})




    return render(request,'login.html')




def show_st(request,username):
    data=[]
    with connection.cursor() as cursor:
        try:

          cursor.execute("SELECT * FROM csp WHERE roll="+str(username))


          for row in cursor.fetchall():

              data=list(row)

              s = (int(row[3]) + int(row[4]) + int(row[5]) + int(row[6]) + int(row[7]))
              print(s)
              data.append(s)

        except:
            pass
    return render(request,'showst.html',{'data':data})

def signup(request):
    if request.method == 'POST':
        print("yes")
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

def upload(request):
    if request.method=='POST':
        uploaded_file=request.FILES['document']
        fs=FileSystemStorage()
        fs.save(uploaded_file.name,uploaded_file)
        client = boto3.client('rekognition', region_name='us-east-1')
        b=[]
        present=0
        for x in range(16230,16257):
            x = str(x)

            p = (x + ".jpg")

            with open('face/photos/' + uploaded_file.name, 'rb') as target_image:
                target_bytes = target_image.read()
            response = client.compare_faces(
                SourceImage={
                    "S3Object": {
                        "Bucket": "rizwans3",
                        "Name": x + ".jpg",
                    }
                },
                TargetImage={'Bytes': target_bytes}, )
            crnt, name = get(x)
            print(response)
            if len(response['FaceMatches']) > 0:
                per = response['FaceMatches'][0]['Similarity']

            else:
                per = 80

            if per>90:

                crnt += 1
                set(x, crnt)
                present += 1

                b.append([x, name, 'P'])

            else:
                b.append([x, name, 'A'])

        for x in range(178201,178213):
            x=str(x)

            p=(x+".jpg")

            with open('face/photos/'+uploaded_file.name, 'rb') as target_image:
                target_bytes = target_image.read()
            response = client.compare_faces(
                SourceImage={
                    "S3Object": {
                        "Bucket": "rizwans3",
                        "Name": x + ".jpg",
                    }
                },
                TargetImage={'Bytes': target_bytes}, )
            crnt, name = get(x)
            print(response)
            if len(response['FaceMatches']) > 0:
                per = response['FaceMatches'][0]['Similarity']

            else:
                per = 80
            if per>90:
                crnt+=1
                set(x,crnt)
                present+=1

                b.append([x,name,'P'])

            else:
                b.append([x,name,'A'])


        return chart(request,present,b)

    return render(request, 'upload.html')



def chart(request,present,b):

    b.insert(0,present)



    return render(request,'chart.html',{'b':b})