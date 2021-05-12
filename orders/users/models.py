from django.db import models

class User(models.Model):                                                       
    account         = models.CharField(max_length=100, unique=True)              
    password        = models.CharField(max_length=300)                          
    nickname        = models.CharField(max_length=100, null=True)
    email           = models.EmailField(max_length=100, unique=True)
    address         = models.CharField(max_length=500, null=True)
    phone_number    = models.CharField(max_length=50, unique=True)
    created_at      = models.DateTimeField(auto_now_add=True)                   
    updated_at      = models.DateTimeField(auto_now=True)                      

    class Meta:
        db_table = 'users'