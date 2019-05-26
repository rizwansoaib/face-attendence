from django.db import models


class stauth(models.Model):
    roll= models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    mobile = models.CharField(max_length=100)


    class Meta:
        db_table="stauth"

    def __str__(self):
        return (self.email)





class tauth(models.Model):
    username= models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    mobile = models.CharField(max_length=100)
    password = models.CharField(max_length=100)




    class Meta:
        db_table="tauth"

    def __str__(self):
        return (self.email)





class csp(models.Model):
    roll= models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    kcs601 = models.CharField(max_length=100)
    kcs602 = models.CharField(max_length=100)
    kcs603 = models.CharField(max_length=100)
    kcs604 = models.CharField(max_length=100)
    kcs605 = models.CharField(max_length=100)





    class Meta:
        db_table="csp"

    def __str__(self):
        return (self.roll)



class student(models.Model):
    sid= models.CharField(max_length=100,primary_key=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    sem = models.CharField(max_length=100)
    status = models.CharField(max_length=100)
    branch_id = models.CharField(max_length=100)

    class Meta:
        db_table="student"

    def __str__(self):
        return (self.sid)





class teacher(models.Model):
    tid= models.CharField(max_length=100,primary_key=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    department = models.CharField(max_length=100)

    class Meta:
        db_table="teacher"




class subject(models.Model):
    subject_id= models.CharField(max_length=100,primary_key=True)
    subject_name = models.CharField(max_length=100)

    class Meta:
        db_table="subject"
    def __str__(self):
        return (self.subject_name)


class branch(models.Model):
    branch_id = models.CharField(max_length=100,primary_key=True)
    branch_name = models.CharField(max_length=100)

    class Meta:
        db_table = "branch"

    def __str__(self):
        return (self.branch_name)

class attendance(models.Model):
    branch_id = models.CharField(max_length=100)
    student_id = models.CharField(max_length=100)
    sem = models.CharField(max_length=100)

    teacher_id = models.CharField(max_length=100)
    subject_id = models.CharField(max_length=100)
    date = models.CharField(max_length=100)
    present = models.CharField(max_length=100)


    class Meta:
        db_table = "attendance"

    def __str__(self):
        return (self.date)

