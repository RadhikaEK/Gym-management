from django.db import models

# Create your models here.


class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=30)
    password = models.CharField(max_length=50)
    age = models.IntegerField()
    gender = models.CharField(max_length=30)
    weight = models.CharField(max_length=20)
    height = models.CharField(max_length=30)
    body_type = models.CharField(max_length=30)
    fat = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'user'


