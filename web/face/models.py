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





